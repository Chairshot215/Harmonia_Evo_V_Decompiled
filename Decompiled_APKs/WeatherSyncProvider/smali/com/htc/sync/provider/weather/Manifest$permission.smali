.class public final Lcom/htc/sync/provider/weather/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sync/provider/weather/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final RECEIVER:Ljava/lang/String; = "htc.permission.weather.RECEIVER"

.field public static final USE_DATA:Ljava/lang/String; = "htc.permission.weather.USE_DATA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
