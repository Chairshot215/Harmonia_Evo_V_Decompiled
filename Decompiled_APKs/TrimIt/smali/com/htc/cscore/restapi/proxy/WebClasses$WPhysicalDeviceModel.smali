.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPhysicalDeviceModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel$WDeviceModelType;
    }
.end annotation


# instance fields
.field public CellColumns:I

.field public CellRows:I

.field public HandsetScreenHeight:I

.field public HandsetScreenWidth:I

.field public HandsetWallpaperHeight:I

.field public HandsetWallpaperWidth:I

.field public Id:Ljava/util/UUID;

.field public ImageHeight:I

.field public ImageScreenHeight:I

.field public ImageScreenOffsetX:I

.field public ImageScreenOffsetY:I

.field public ImageScreenWidth:I

.field public ImageWidth:I

.field public ModelType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel$WDeviceModelType;

.field public Name:Ljava/lang/String;

.field public PartNumber:Ljava/lang/String;

.field public PhysicalDeviceModelImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModelImage;

.field public Properties:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    return-void
.end method
