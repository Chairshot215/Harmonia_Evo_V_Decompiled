.class public abstract Lcom/android/camera/ModeHandler;
.super Ljava/lang/Object;
.source "ModeHandler.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CancelSpecialControlItem()V
    .locals 0

    return-void
.end method

.method public Enter()V
    .locals 0

    return-void
.end method

.method public Leave()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ModeHandler;->disableSpecificResolution()V

    return-void
.end method

.method public ShowSpecialControlItem()V
    .locals 0

    return-void
.end method

.method public disableSpecificResolution()V
    .locals 0

    return-void
.end method

.method public enableSpecificResolution(Lcom/android/camera/Resolution;)V
    .locals 0

    return-void
.end method

.method public abstract getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
.end method

.method public abstract getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
.end method

.method public onResumeBack(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
