.class Lcom/android/camera/component/ZoomBar$7;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$7;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar$7;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/camera/component/ZoomBar;->access$200(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar$7;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/camera/component/ZoomBar;->access$300(Lcom/android/camera/component/ZoomBar;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    sub-int v4, v0, v3

    div-int/lit8 v1, v4, 0x2

    sub-int v4, v0, v3

    sub-int v2, v4, v1

    neg-int v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar$7;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/camera/component/ZoomBar;->access$300(Lcom/android/camera/component/ZoomBar;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method
