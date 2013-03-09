.class public final Lcom/htc/opensense/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final USE_BROADCAST:Ljava/lang/String; = "htc.pluginmanager.permission.USE_BROADCAST"

.field public static final USE_PROVIDER:Ljava/lang/String; = "htc.pluginmanager.permission.USE_PROVIDER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
