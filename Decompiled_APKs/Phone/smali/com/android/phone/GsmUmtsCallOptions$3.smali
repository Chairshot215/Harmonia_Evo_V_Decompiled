.class Lcom/android/phone/GsmUmtsCallOptions$3;
.super Landroid/telephony/PhoneStateListener;
.source "GsmUmtsCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsCallOptions;->updateCellBroadcastSetting()V

    .line 458
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallOptions$3;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsCallOptions;->updateCellBroadcastSetting()V

    .line 462
    return-void
.end method
