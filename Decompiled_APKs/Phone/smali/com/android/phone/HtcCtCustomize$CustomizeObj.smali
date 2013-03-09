.class Lcom/android/phone/HtcCtCustomize$CustomizeObj;
.super Ljava/lang/Object;
.source "HtcCtCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCtCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomizeObj"
.end annotation


# instance fields
.field bcastReceiver:Landroid/content/BroadcastReceiver;

.field context:Landroid/content/Context;

.field inService:Ljava/lang/Boolean;

.field isRoaming:Z

.field phone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/phone/HtcCtCustomize;

.field tone:Landroid/media/ToneGenerator;

.field vibr:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCtCustomize;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->this$0:Lcom/android/phone/HtcCtCustomize;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
