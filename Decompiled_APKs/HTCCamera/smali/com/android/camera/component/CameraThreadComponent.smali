.class public abstract Lcom/android/camera/component/CameraThreadComponent;
.super Lcom/android/camera/component/Component;
.source "CameraThreadComponent.java"


# instance fields
.field private final m_CameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/android/camera/component/CameraThreadComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method


# virtual methods
.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraThreadComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method
