.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;Z)V

    .line 649
    return-void
.end method

.method public onMessageWaitingIndicatorChangedEnhanced(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onMwiChanged(I)V
    invoke-static {v0, p1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;I)V

    .line 643
    return-void
.end method
