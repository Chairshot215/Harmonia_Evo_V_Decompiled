.class public Lcom/htc/wrap/android/content/pm/HtcWrapApplicationInfo;
.super Ljava/lang/Object;
.source "HtcWrapApplicationInfo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowSkinChange(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    return v0
.end method

.method public static isHtcApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    return v0
.end method
