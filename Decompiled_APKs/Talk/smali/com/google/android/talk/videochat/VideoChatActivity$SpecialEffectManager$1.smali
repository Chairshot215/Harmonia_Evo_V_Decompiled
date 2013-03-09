.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3602(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 830
    return-void
.end method
