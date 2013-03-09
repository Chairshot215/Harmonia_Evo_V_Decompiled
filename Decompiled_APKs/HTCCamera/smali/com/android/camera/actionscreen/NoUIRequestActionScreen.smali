.class public Lcom/android/camera/actionscreen/NoUIRequestActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "NoUIRequestActionScreen.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "No UI Request Action Screen"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "No UI Request Action Screen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    return-void
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->completeCloseActionScreen()V

    :cond_0
    return-void
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media saved"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/camera/MediaSaveFailedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    return-void
.end method

.method protected openActionScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    :cond_0
    return-void
.end method

.method protected prepareActionScreen()V
    .locals 0

    return-void
.end method
