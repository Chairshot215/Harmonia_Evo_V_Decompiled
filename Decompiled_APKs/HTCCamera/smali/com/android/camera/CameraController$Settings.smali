.class public Lcom/android/camera/CameraController$Settings;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraController$Settings$MeterSettings;,
        Lcom/android/camera/CameraController$Settings$FrontCamMode;,
        Lcom/android/camera/CameraController$Settings$CamMode;,
        Lcom/android/camera/CameraController$Settings$DisableValue;,
        Lcom/android/camera/CameraController$Settings$DefaultValue;,
        Lcom/android/camera/CameraController$Settings$Keys;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final OFF:Ljava/lang/String; = "off"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final TRUE:Ljava/lang/String; = "true"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
