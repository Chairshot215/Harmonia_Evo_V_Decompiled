.class public Lcom/googlecode/eyesfree/compat/os/VibratorCompatUtils;
.super Ljava/lang/Object;
.source "VibratorCompatUtils.java"


# static fields
.field private static final METHOD_hasVibrator:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Landroid/os/Vibrator;

    .line 27
    const-string v1, "hasVibrator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 26
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/os/VibratorCompatUtils;->METHOD_hasVibrator:Ljava/lang/reflect/Method;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static hasVibrator(Landroid/os/Vibrator;)Z
    .locals 3
    .parameter "receiver"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/googlecode/eyesfree/compat/os/VibratorCompatUtils;->METHOD_hasVibrator:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
