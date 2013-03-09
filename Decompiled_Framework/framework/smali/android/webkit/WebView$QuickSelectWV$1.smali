.class Landroid/webkit/WebView$QuickSelectWV$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$QuickSelectWV;->onTouchEvent(IILandroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;

.field final synthetic val$p:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$QuickSelectWV;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$1;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iput-object p2, p0, Landroid/webkit/WebView$QuickSelectWV$1;->val$p:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$1;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$1;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$1;->val$p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV$1;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$15500(Landroid/webkit/WebView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    return-void
.end method
