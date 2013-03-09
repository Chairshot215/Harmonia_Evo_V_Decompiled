.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->startTraining(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$1;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$1;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->cancelTraining()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->access$4100(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)V

    .line 1140
    return-void
.end method
