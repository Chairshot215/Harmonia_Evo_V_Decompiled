.class public interface abstract Lcom/android/phone/util/BuildUtils$CharmIndicator;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/BuildUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CharmIndicator"
.end annotation


# static fields
.field public static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/util/BuildUtils$CharmIndicator;->ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
