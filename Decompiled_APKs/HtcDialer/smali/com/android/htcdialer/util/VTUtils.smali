.class public Lcom/android/htcdialer/util/VTUtils;
.super Ljava/lang/Object;
.source "VTUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/util/VTUtils$VTHelper;,
        Lcom/android/htcdialer/util/VTUtils$CallType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTUtils"

.field public static final VT_TEST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "1"

    const-string v1, "com.htc.phone.vt_test"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/htcdialer/util/VTUtils;->VT_TEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method
