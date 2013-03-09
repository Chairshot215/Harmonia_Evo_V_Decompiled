.class Lcom/android/systemui/statusbar/phone/MobileConfigView$3;
.super Ljava/lang/Object;
.source "MobileConfigView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MobileConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MobileConfigView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggleChanged(II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->getAutoSyncSetting()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->getBackgroundDataSetting()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    #calls: Lcom/android/systemui/statusbar/phone/MobileConfigView;->getMobileDataEnabled()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->access$300(Lcom/android/systemui/statusbar/phone/MobileConfigView;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->isNetworkAvailableButNotMobile()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setTouchable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setTouchable(Z)V

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-ne v2, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    #calls: Lcom/android/systemui/statusbar/phone/MobileConfigView;->setMobileDataEnabled(Z)V
    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->access$400(Lcom/android/systemui/statusbar/phone/MobileConfigView;Z)V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_4

    const/16 v3, 0x32

    if-ne p2, v3, :cond_4

    if-ne v1, v4, :cond_3

    if-ne v0, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setAutoSyncSetting(Z)V

    :cond_3
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    #calls: Lcom/android/systemui/statusbar/phone/MobileConfigView;->setMobileDataEnabled(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->access$400(Lcom/android/systemui/statusbar/phone/MobileConfigView;Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    const/16 v3, 0x64

    if-ne p2, v3, :cond_7

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setAutoSyncSetting(Z)V

    :cond_5
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setBackgroundDataSetting(Z)V

    :cond_6
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    #calls: Lcom/android/systemui/statusbar/phone/MobileConfigView;->setMobileDataEnabled(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->access$400(Lcom/android/systemui/statusbar/phone/MobileConfigView;Z)V

    goto :goto_0

    :cond_7
    const-string v3, "MobileConfigView"

    const-string v4, "onToggleChanged() State Error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
