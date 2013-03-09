.class Lcom/android/systemui/statusbar/phone/TrackingView$1;
.super Ljava/lang/Object;
.source "TrackingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TrackingView;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrackingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TrackingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrackingView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView$1;->this$0:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    return-void
.end method
