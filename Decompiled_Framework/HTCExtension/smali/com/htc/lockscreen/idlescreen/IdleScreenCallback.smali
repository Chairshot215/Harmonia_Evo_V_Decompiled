.class public interface abstract Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
.super Ljava/lang/Object;
.source "IdleScreenCallback.java"


# virtual methods
.method public abstract dismissReminder(IJ)V
.end method

.method public abstract handleAllReminder(Z)V
.end method

.method public abstract pokeWakeLock()V
.end method

.method public abstract pokeWakeLock(I)V
.end method

.method public abstract registerReminderState(Lcom/htc/lockscreen/reminder/ReminderListener;)V
.end method

.method public abstract registerTelephonyState(Lcom/htc/lockscreen/telephony/TelephonyListener;)V
.end method

.method public abstract snoozeReminder(IJLjava/lang/String;)V
.end method

.method public abstract unlock()V
.end method

.method public abstract unlock(Landroid/os/Bundle;)V
.end method

.method public abstract unregisterReminderState()V
.end method

.method public abstract unregisterTelephonyState()V
.end method
