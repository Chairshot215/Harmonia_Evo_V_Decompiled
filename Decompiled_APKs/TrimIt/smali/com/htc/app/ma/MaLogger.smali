.class public Lcom/htc/app/ma/MaLogger;
.super Ljava/lang/Object;
.source "MaLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MA_LOGGER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 18
    const-string v0, "MA_LOGGER"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 12
    const-string v0, "MA_LOGGER"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method
