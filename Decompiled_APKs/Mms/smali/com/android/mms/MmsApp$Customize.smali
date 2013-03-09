.class public interface abstract Lcom/android/mms/MmsApp$Customize;
.super Ljava/lang/Object;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Customize"
.end annotation


# static fields
.field public static final Emerald:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2411
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/mms/MmsApp$Customize;->Emerald:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
