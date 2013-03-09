.class final Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallbackRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/CallbackRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/real/CallbackRunner;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;-><init>(Lcom/google/android/location/os/real/CallbackRunner;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4
    .parameter "cellLocation"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/os/real/CallbackRunner;->access$600(Lcom/google/android/location/os/real/CallbackRunner;III)V

    .line 219
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/os/real/CallbackRunner;->access$600(Lcom/google/android/location/os/real/CallbackRunner;III)V

    .line 231
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "ss"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/4 v1, 0x5

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/location/os/real/CallbackRunner;->access$500(Lcom/google/android/location/os/real/CallbackRunner;ILjava/lang/Object;)V

    .line 224
    return-void
.end method
