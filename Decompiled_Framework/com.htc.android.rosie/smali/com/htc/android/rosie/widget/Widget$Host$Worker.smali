.class public interface abstract Lcom/htc/android/rosie/widget/Widget$Host$Worker;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/Widget$Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/Runnable;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract getContentObserver(Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;)Landroid/database/ContentObserver;
.end method

.method public abstract hasMessage(I)Z
.end method

.method public abstract hasMessage(ILjava/lang/Object;)Z
.end method

.method public abstract obtainMessage()Landroid/os/Message;
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postAtTime(Ljava/lang/Runnable;J)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract recall(I)V
.end method

.method public abstract recall(ILjava/lang/Object;)V
.end method

.method public abstract send(I)V
.end method

.method public abstract send(Landroid/os/Message;)V
.end method

.method public abstract sendAtTime(IJ)V
.end method

.method public abstract sendAtTime(Landroid/os/Message;J)V
.end method

.method public abstract sendDelayed(IJ)V
.end method

.method public abstract sendDelayed(Landroid/os/Message;J)V
.end method
