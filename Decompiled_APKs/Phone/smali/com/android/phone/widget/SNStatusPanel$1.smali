.class Lcom/android/phone/widget/SNStatusPanel$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SNStatusPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/widget/SNStatusPanel;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/SNStatusPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/SNStatusPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "SNStatusPanel"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 118
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    #getter for: Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z
    invoke-static {v0}, Lcom/android/phone/widget/SNStatusPanel;->access$000(Lcom/android/phone/widget/SNStatusPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    #calls: Lcom/android/phone/widget/SNStatusPanel;->shrink()V
    invoke-static {v0}, Lcom/android/phone/widget/SNStatusPanel;->access$100(Lcom/android/phone/widget/SNStatusPanel;)V

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 120
    :cond_1
    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    #getter for: Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z
    invoke-static {v0}, Lcom/android/phone/widget/SNStatusPanel;->access$000(Lcom/android/phone/widget/SNStatusPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    #calls: Lcom/android/phone/widget/SNStatusPanel;->expand()V
    invoke-static {v0}, Lcom/android/phone/widget/SNStatusPanel;->access$200(Lcom/android/phone/widget/SNStatusPanel;)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 130
    const-string v0, "SNStatusPanel"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    #getter for: Lcom/android/phone/widget/SNStatusPanel;->mIsExpaneded:Z
    invoke-static {v0}, Lcom/android/phone/widget/SNStatusPanel;->access$000(Lcom/android/phone/widget/SNStatusPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/phone/widget/SNStatusPanel$1;->this$0:Lcom/android/phone/widget/SNStatusPanel;

    #calls: Lcom/android/phone/widget/SNStatusPanel;->expand()V
    invoke-static {v0}, Lcom/android/phone/widget/SNStatusPanel;->access$200(Lcom/android/phone/widget/SNStatusPanel;)V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
