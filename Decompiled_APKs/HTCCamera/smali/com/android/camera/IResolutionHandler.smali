.class public interface abstract Lcom/android/camera/IResolutionHandler;
.super Ljava/lang/Object;
.source "IResolutionHandler.java"


# virtual methods
.method public abstract getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
.end method

.method public abstract getResolutionMenuItems(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
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

.method public abstract getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
.end method
