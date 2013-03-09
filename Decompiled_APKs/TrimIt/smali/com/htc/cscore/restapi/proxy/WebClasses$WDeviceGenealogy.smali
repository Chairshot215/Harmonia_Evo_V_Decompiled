.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceGenealogy;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WDeviceGenealogy"
.end annotation


# instance fields
.field public HandsetDeviceId:Ljava/util/UUID;

.field public IMEIESN1:Ljava/lang/String;

.field public IMEIESN2:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public IsBlacklisted:Z

.field public ModelId:Ljava/util/UUID;

.field public PhysicalDeviceModel:Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;

.field public SerialNumber:Ljava/lang/String;

.field public ShipDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
