.class Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;
.super Ljava/lang/Object;
.source "CarrierExtended.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshThread"
.end annotation


# static fields
.field static final PERIOD:J = 0x3e8L


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;->this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->access$3()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;->this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierExtended;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->access$4(Lcom/android/systemui/statusbar/phone/CarrierExtended;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
