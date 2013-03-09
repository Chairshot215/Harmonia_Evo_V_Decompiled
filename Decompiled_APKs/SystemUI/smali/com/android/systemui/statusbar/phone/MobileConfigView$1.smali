.class Lcom/android/systemui/statusbar/phone/MobileConfigView$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileConfigView.java"


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    #calls: Lcom/android/systemui/statusbar/phone/MobileConfigView;->updateStateUI()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->access$000(Lcom/android/systemui/statusbar/phone/MobileConfigView;)V

    return-void
.end method
