.class Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;
.super Ljava/lang/Object;
.source "HtcLockScreenControlArcIncomingCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 279
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowL:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$000(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowR:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$100(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$300(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$300(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$400(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$400(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;->this$0:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    #calls: Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->clearArrowAnimation()V
    invoke-static {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->access$500(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)V

    .line 286
    return-void
.end method
