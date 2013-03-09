.class public Lcom/android/settings/framework/util/HtcDisplayMetrics;
.super Landroid/util/DisplayMetrics;
.source "HtcDisplayMetrics.java"


# static fields
.field private static final ENABLE_CACHE:Z = true

.field private static sInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    .line 46
    .local v0, instance:Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 70
    :goto_0
    return-void

    .line 54
    .end local v0           #instance:Landroid/util/DisplayMetrics;
    :cond_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 59
    .local v1, wm:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    .restart local v0       #instance:Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method
