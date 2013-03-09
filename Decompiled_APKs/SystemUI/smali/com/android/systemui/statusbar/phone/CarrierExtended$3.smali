.class Lcom/android/systemui/statusbar/phone/CarrierExtended$3;
.super Landroid/os/Handler;
.source "CarrierExtended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierExtended;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierExtended$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierExtended;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->setCustomText()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/CarrierExtended;->mThread:Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierExtended$RefreshThread;->run()V

    return-void
.end method
