.class public Lcom/android/settings/framework/content/HtcSettingsContext;
.super Ljava/lang/Object;
.source "HtcSettingsContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/settings/framework/content/HtcSettingsContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 42
    :cond_0
    :goto_0
    return-object p0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    const-string v2, "The package name can not be found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
