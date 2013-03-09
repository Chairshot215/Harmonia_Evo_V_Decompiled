.class Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;
.super Ljava/lang/Object;
.source "DAMStaticalChartActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;
    invoke-static {v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$000(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/util/htcDAM;->getClosestKeyIndex(II)I

    move-result v0

    .line 78
    .local v0, keyIndex:I
    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$100(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$200(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    const-string v1, "DAM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$100(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$200(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)Z
    invoke-static {v2, v3, v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$300(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;Landroid/widget/ImageView;Ljava/util/ArrayList;)Z

    .line 83
    .end local v0           #keyIndex:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
