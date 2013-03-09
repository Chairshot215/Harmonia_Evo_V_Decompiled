.class Lcom/android/systemui/statusbar/preference/VibrationMode$1;
.super Landroid/content/BroadcastReceiver;
.source "VibrationMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/VibrationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/VibrationMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/VibrationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/VibrationMode$1;->this$0:Lcom/android/systemui/statusbar/preference/VibrationMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "VibrationMode"

    const-string v1, "Received intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/VibrationMode$1;->this$0:Lcom/android/systemui/statusbar/preference/VibrationMode;

    #calls: Lcom/android/systemui/statusbar/preference/VibrationMode;->handleVibrationModeChanged()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/VibrationMode;->access$000(Lcom/android/systemui/statusbar/preference/VibrationMode;)V

    :cond_0
    return-void
.end method
