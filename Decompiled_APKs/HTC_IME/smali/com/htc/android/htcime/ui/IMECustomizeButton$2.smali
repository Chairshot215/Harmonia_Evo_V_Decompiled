.class Lcom/htc/android/htcime/ui/IMECustomizeButton$2;
.super Ljava/lang/Object;
.source "IMECustomizeButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/IMECustomizeButton;->setButton(Landroid/graphics/drawable/Drawable;)V
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
    .line 107
    iput-object p1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$2;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$2;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$600(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$2;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    #getter for: Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->access$600(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton$2;->this$0:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
