.class Lcom/htc/store/module/view/PromoSwitcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PromoSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/module/view/PromoSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/module/view/PromoSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/store/module/view/PromoSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v4, 0xc7b0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, result:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 86
    .local v0, dx:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/store/module/view/PromoSwitcher;->access$200(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/store/module/view/PromoSwitcher;->access$200(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 88
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/store/module/view/PromoSwitcher;->access$300(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2, v5}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(Z)V

    .line 95
    :goto_0
    const/4 v1, 0x1

    .line 100
    :cond_0
    :goto_1
    invoke-static {}, Lcom/htc/store/module/view/PromoSwitcher;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onFling: "

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return v1

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/store/module/view/PromoSwitcher;->access$300(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v2, v5}, Lcom/htc/store/module/view/PromoSwitcher;->movePrevious(Z)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/htc/store/module/view/PromoSwitcher;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "promo items are less than 2"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/store/module/view/PromoSwitcher;->access$000(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/store/module/view/PromoSwitcher;->access$000(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$1;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x1

    .line 79
    :goto_0
    invoke-static {}, Lcom/htc/store/module/view/PromoSwitcher;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onSingleTapConfirmed: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
