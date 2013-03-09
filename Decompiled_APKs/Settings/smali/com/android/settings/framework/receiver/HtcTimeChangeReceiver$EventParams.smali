.class public Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;
.super Ljava/lang/Object;
.source "HtcTimeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventParams"
.end annotation


# instance fields
.field public isTimeChangedAction:Z

.field public isTimeFormatChangedAction:Z

.field public isTimeTickAction:Z

.field public isTimezoneChangedAction:Z

.field final synthetic this$0:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;->this$0:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
