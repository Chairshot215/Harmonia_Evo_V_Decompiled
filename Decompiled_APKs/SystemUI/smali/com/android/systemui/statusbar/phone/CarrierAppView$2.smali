.class Lcom/android/systemui/statusbar/phone/CarrierAppView$2;
.super Ljava/lang/Object;
.source "CarrierAppView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "CarrierAppView"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierAppView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->access$300(Lcom/android/systemui/statusbar/phone/CarrierAppView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierAppView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->access$300(Lcom/android/systemui/statusbar/phone/CarrierAppView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    :cond_0
    return-void
.end method
