.class interface abstract Lcom/android/providers/downloads/SystemFacade;
.super Ljava/lang/Object;
.source "SystemFacade.java"


# virtual methods
.method public abstract cancelAllNotifications()V
.end method

.method public abstract cancelNotification(J)V
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract getActiveNetworkInfo(I)Landroid/net/NetworkInfo;
.end method

.method public abstract getMaxBytesOverMobile()Ljava/lang/Long;
.end method

.method public abstract getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
.end method

.method public abstract isNetworkRoaming()Z
.end method

.method public abstract postNotification(JLandroid/app/Notification;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract startThread(Ljava/lang/Thread;)V
.end method

.method public abstract userOwnsPackage(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method
