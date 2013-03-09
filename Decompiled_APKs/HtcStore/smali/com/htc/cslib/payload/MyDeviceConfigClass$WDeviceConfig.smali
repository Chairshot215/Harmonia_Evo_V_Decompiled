.class public Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
.super Ljava/lang/Object;
.source "MyDeviceConfigClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/payload/MyDeviceConfigClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WDeviceConfig"
.end annotation


# instance fields
.field public cscore:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;
    .annotation runtime Lcom/htc/gson/annotations/SerializedName;
        value = "cs-core"
    .end annotation
.end field

.field public personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

.field public stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
