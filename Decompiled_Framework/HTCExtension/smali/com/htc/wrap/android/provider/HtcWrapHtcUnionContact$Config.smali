.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Config;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHTCPeopleEnabled()Z
    .locals 1

    invoke-static {}, Landroid/provider/HtcUnionContact$Config;->isHTCPeopleEnabled()Z

    move-result v0

    return v0
.end method
