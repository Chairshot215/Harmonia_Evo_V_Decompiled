.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPopup(Landroid/view/View;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

.field final synthetic val$anchor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 837
    sub-int v4, p4, p2

    .line 838
    .local v4, panelWidth:I
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3600(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;->val$anchor:Landroid/view/View;

    neg-int v2, v4

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x0

    sub-int v5, p5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 841
    return-void
.end method
