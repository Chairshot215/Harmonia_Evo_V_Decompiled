.class public Lcom/android/calculator2/CalculatorImageButton;
.super Landroid/widget/ImageButton;
.source "CalculatorImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    instance-of v0, p1, Lcom/android/calculator2/Calculator;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 20
    check-cast v0, Lcom/android/calculator2/Calculator;

    iget-object v0, v0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorImageButton;->mListener:Landroid/view/View$OnClickListener;

    .line 21
    invoke-virtual {p0, p0}, Lcom/android/calculator2/CalculatorImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0, p0}, Lcom/android/calculator2/CalculatorImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/calculator2/CalculatorImageButton;->mVibrator:Landroid/os/Vibrator;

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/CalculatorImageButton;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/calculator2/CalculatorImageButton;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/calculator2/CalculatorImageButton;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 37
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
