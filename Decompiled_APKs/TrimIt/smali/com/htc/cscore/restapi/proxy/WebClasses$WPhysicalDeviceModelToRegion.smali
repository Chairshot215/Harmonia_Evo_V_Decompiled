.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModelToRegion;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPhysicalDeviceModelToRegion"
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public PhysicalDeviceModelId:Ljava/util/UUID;

.field public RegionId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
