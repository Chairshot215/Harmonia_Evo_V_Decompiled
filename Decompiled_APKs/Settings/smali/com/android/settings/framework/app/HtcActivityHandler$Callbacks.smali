.class interface abstract Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/htc/preference/HtcPreference;)V
.end method

.method public abstract getNonUIHandler()Landroid/os/Handler;
.end method

.method public abstract getUIHandler()Landroid/os/Handler;
.end method

.method public abstract onActivityResultInBackground(IILandroid/content/Intent;)V
.end method

.method public abstract onCreateInBackground(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroyInBackground()V
.end method

.method public abstract onHandleNonUIMessage(Landroid/os/Message;)V
.end method

.method public abstract onHandleUIMessage(Landroid/os/Message;)V
.end method

.method public abstract onPauseInBackground()V
.end method

.method public abstract onPostCreateInBackground(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResumeInBackground()V
.end method

.method public abstract onRestartInBackground()V
.end method

.method public abstract onResumeInBackground()V
.end method

.method public abstract onStartInBackground()V
.end method

.method public abstract onStopInBackground()V
.end method

.method public abstract requestHandlers()V
.end method

.method public abstract runInNonUIThread(Ljava/lang/Runnable;)V
.end method

.method public abstract runInUIThread(Ljava/lang/Runnable;)V
.end method
