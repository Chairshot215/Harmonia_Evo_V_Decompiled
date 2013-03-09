.class public final Lcom/android/camera/effect/GpuEffectParameters;
.super Ljava/lang/Object;
.source "GpuEffectParameters.java"


# static fields
.field public static final PARAMETER_KEY_0:Ljava/lang/String; = "GE-param0"

.field public static final PARAMETER_KEY_1:Ljava/lang/String; = "GE-param1"

.field public static final PARAMETER_KEY_2:Ljava/lang/String; = "GE-param2"

.field public static final PARAMETER_KEY_3:Ljava/lang/String; = "GE-param3"


# instance fields
.field public final enabled:Z

.field public final key:Ljava/lang/String;

.field public final n0:I

.field public final n1:I

.field public final n2:I

.field public final n3:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iput p2, p0, Lcom/android/camera/effect/GpuEffectParameters;->n0:I

    iput p3, p0, Lcom/android/camera/effect/GpuEffectParameters;->n1:I

    iput p4, p0, Lcom/android/camera/effect/GpuEffectParameters;->n2:I

    iput p5, p0, Lcom/android/camera/effect/GpuEffectParameters;->n3:I

    iput-boolean p6, p0, Lcom/android/camera/effect/GpuEffectParameters;->enabled:Z

    return-void
.end method
