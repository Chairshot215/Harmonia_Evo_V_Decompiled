.class public Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;
.super Ljava/lang/Object;
.source "HtcSecurityFeatureFlags.java"


# static fields
.field public static final isDebugMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportEncryptTablet()Z
    .locals 2

    .prologue
    .line 27
    const-string v0, "HTC__A07"

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getCurrentCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
