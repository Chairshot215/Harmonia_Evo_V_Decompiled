.class public Lcom/android/camera/CloseCameraRequestEvent;
.super Lcom/android/camera/RequestEvent;
.source "CloseCameraRequestEvent.java"


# instance fields
.field private final m_Camera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/RequestEvent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/CloseCameraRequestEvent;->m_Camera:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public final getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CloseCameraRequestEvent;->m_Camera:Landroid/hardware/Camera;

    return-object v0
.end method
