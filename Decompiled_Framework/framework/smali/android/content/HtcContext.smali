.class public abstract Landroid/content/HtcContext;
.super Landroid/content/Context;
.source "HtcContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/content/HtcContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/HtcContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    return-void
.end method

.method public static createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/content/HtcContext;->TAG:Ljava/lang/String;

    const-string v2, "The package name can not be found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
