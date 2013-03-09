.class public final Lcom/htc/util/contacts/BuildUtils$Feature;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/BuildUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feature"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVideoCallSupported()Z
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChinaCMCC()Z

    move-result v0

    return v0
.end method
