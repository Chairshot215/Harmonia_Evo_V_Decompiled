.class public interface abstract Lcom/android/internal/telephony/PhoneNotifier;
.super Ljava/lang/Object;
.source "PhoneNotifier.java"


# virtual methods
.method public abstract notifyCallDisconnected(Lcom/android/internal/telephony/Connection;)V
.end method

.method public abstract notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
.end method

.method public abstract notifyDataConnectionDisconnected(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;[Ljava/lang/String;)V
.end method

.method public abstract notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyDataConnectionFailedLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
.end method

.method public abstract notifyDataConnectionLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V
.end method

.method public abstract notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyPrecisePhoneState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyServiceState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
.end method
