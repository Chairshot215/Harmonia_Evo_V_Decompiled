.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$6;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showImageStabilizationSpecialEffect(Landroid/view/View;)V
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
    .line 1027
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$6;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$6;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3700(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    .line 1031
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$6;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v1, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {v2, v3, v0}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    .line 1033
    return-void
.end method
