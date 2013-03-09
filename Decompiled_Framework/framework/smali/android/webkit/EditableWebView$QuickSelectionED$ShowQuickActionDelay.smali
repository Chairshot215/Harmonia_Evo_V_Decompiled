.class Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView$QuickSelectionED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowQuickActionDelay"
.end annotation


# instance fields
.field selectionRegion:Landroid/graphics/Rect;

.field final synthetic this$1:Landroid/webkit/EditableWebView$QuickSelectionED;


# direct methods
.method private constructor <init>(Landroid/webkit/EditableWebView$QuickSelectionED;)V
    .locals 1

    iput-object p1, p0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->this$1:Landroid/webkit/EditableWebView$QuickSelectionED;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/EditableWebView$QuickSelectionED;Landroid/webkit/EditableWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;-><init>(Landroid/webkit/EditableWebView$QuickSelectionED;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->this$1:Landroid/webkit/EditableWebView$QuickSelectionED;

    #getter for: Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v0}, Landroid/webkit/EditableWebView$QuickSelectionED;->access$700(Landroid/webkit/EditableWebView$QuickSelectionED;)Landroid/webkit/QuickActionsHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->this$1:Landroid/webkit/EditableWebView$QuickSelectionED;

    iget-object v2, p0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    #calls: Landroid/webkit/EditableWebView$QuickSelectionED;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v1, v2}, Landroid/webkit/EditableWebView$QuickSelectionED;->access$600(Landroid/webkit/EditableWebView$QuickSelectionED;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->this$1:Landroid/webkit/EditableWebView$QuickSelectionED;

    iget-object v2, v2, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method
