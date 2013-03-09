.class Lcom/android/systemui/statusbar/preference/HotSpot$1;
.super Landroid/content/BroadcastReceiver;
.source "HotSpot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/HotSpot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$1;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotSpotStatusBarPreference"

    const-string v2, "receive mhs status change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$1;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->checkMHSStatus()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$000(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    :cond_0
    return-void
.end method
