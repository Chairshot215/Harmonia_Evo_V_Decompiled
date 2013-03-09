.class public Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;
.super Ljava/lang/Object;
.source "MyDeviceConfigClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/payload/MyDeviceConfigClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WConfig"
.end annotation


# instance fields
.field public CmsUri:Ljava/lang/String;

.field public ImcUri:Ljava/lang/String;

.field public ServiceUri:Ljava/lang/String;

.field public UpUri:Ljava/lang/String;

.field public WebCmsUri:Ljava/lang/String;

.field public WebServiceUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
