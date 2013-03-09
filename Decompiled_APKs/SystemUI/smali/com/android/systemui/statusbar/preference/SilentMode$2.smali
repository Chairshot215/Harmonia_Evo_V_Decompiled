.class Lcom/android/systemui/statusbar/preference/SilentMode$2;
.super Ljava/lang/Object;
.source "SilentMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/SilentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/SilentMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/SilentMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/SilentMode$2;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/SilentMode$2;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/SilentMode;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const-string v1, "SilentMode"

    const-string v2, "Enabling silent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/SilentMode$2;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    #getter for: Lcom/android/systemui/statusbar/preference/SilentMode;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/SilentMode;->access$200(Lcom/android/systemui/statusbar/preference/SilentMode;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
