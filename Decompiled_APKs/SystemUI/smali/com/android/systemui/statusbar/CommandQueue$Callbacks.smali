.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
.end method

.method public abstract animateCollapse()V
.end method

.method public abstract animateExpand()V
.end method

.method public abstract disable(I)V
.end method

.method public abstract glow(I)V
.end method

.method public abstract removeIcon(Ljava/lang/String;II)V
.end method

.method public abstract removeNotification(Landroid/os/IBinder;)V
.end method

.method public abstract setHardKeyboardStatus(ZZ)V
.end method

.method public abstract setImeWindowStatus(Landroid/os/IBinder;II)V
.end method

.method public abstract setSystemUiVisibility(I)V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract topAppWindowChanged(Z)V
.end method

.method public abstract updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
.end method
