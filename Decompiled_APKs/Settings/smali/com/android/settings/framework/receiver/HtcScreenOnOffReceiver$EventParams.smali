.class public Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;
.super Ljava/lang/Object;
.source "HtcScreenOnOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventParams"
.end annotation


# instance fields
.field public powerOn:Z

.field final synthetic this$0:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;->this$0:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
