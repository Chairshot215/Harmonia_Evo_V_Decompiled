.class Lcom/android/phone/SkypeIncomingCallArc$4;
.super Ljava/lang/Object;
.source "SkypeIncomingCallArc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SkypeIncomingCallArc;->setupAlertingLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SkypeIncomingCallArc;


# direct methods
.method constructor <init>(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/phone/SkypeIncomingCallArc$4;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc$4;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #getter for: Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    invoke-static {v0}, Lcom/android/phone/SkypeIncomingCallArc;->access$300(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc$4;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #getter for: Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    invoke-static {v0}, Lcom/android/phone/SkypeIncomingCallArc;->access$300(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 355
    :cond_0
    return-void
.end method
