.class Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$QuickSelectWV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowQuickActionDelay"
.end annotation


# instance fields
.field selectionRegion:Landroid/graphics/Rect;

.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 1

    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$QuickSelectWV;Landroid/webkit/WebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;-><init>(Landroid/webkit/WebView$QuickSelectWV;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->access$16000(Landroid/webkit/WebView$QuickSelectWV;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method
