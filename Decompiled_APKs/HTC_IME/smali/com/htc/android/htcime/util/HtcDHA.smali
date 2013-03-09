.class public Lcom/htc/android/htcime/util/HtcDHA;
.super Lcom/htc/android/htcime/util/htcDAM;
.source "HtcDHA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/android/htcime/util/htcDAM;-><init>()V

    return-void
.end method


# virtual methods
.method public NotifyDAMWork(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "parent"
    .parameter "notifyStr"

    .prologue
    .line 17
    const-string v8, "IANIANIAN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NotifyDAMWork notifyStr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->thread:Ljava/lang/Thread;

    if-eqz v8, :cond_0

    .line 20
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->thread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->stop()V

    .line 23
    :cond_0
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 25
    .local v3, mLayoutInflater:Landroid/view/LayoutInflater;
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    if-nez v8, :cond_1

    .line 26
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    .line 28
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    if-nez v8, :cond_1

    .line 82
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 33
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 35
    :cond_2
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 37
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 39
    const v8, 0x7f030010

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 40
    .local v0, frame:Landroid/widget/LinearLayout;
    const v8, 0x7f0e0018

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 42
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 46
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 47
    .local v5, textPaint:Landroid/graphics/Paint;
    const/high16 v8, 0x41a0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 52
    .local v4, margin:I
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    mul-int/lit8 v8, v4, 0x2

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int v7, v8, v9

    .line 55
    .local v7, width:I
    iget v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    mul-int/lit8 v9, v4, 0x2

    add-int v1, v8, v9

    .line 57
    .local v1, height:I
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 58
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 60
    neg-int v8, v1

    iput v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->NotifyWindowPos_y:I

    .line 61
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->NotifyWindowPos_x:I

    .line 62
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/android/htcime/util/HtcDHA;->NotifyWindowPos_x:I

    iget v11, p0, Lcom/htc/android/htcime/util/HtcDHA;->NotifyWindowPos_y:I

    invoke-virtual {v8, p2, v9, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 64
    new-instance v8, Lcom/htc/android/htcime/util/HtcDHA$1;

    invoke-direct {v8, p0}, Lcom/htc/android/htcime/util/HtcDHA$1;-><init>(Lcom/htc/android/htcime/util/HtcDHA;)V

    iput-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->thread:Ljava/lang/Thread;

    .line 81
    iget-object v8, p0, Lcom/htc/android/htcime/util/HtcDHA;->thread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
