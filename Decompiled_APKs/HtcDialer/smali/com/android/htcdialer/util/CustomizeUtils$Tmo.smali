.class public Lcom/android/htcdialer/util/CustomizeUtils$Tmo;
.super Ljava/lang/Object;
.source "CustomizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/CustomizeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tmo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFaveLimitReached(Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "resolver"

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public static isFavesAccount(JLandroid/content/ContentResolver;)Z
    .locals 1
    .parameter "id"
    .parameter "resolver"

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public static markContactAsFave(Landroid/content/Context;J)V
    .locals 0
    .parameter "context"
    .parameter "contactId"

    .prologue
    .line 17
    return-void
.end method
