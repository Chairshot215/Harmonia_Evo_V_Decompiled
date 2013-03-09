.class public Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;
.super Ljava/lang/Object;
.source "MyDeviceConfigClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/payload/MyDeviceConfigClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WCSCore"
.end annotation


# instance fields
.field public config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

.field public meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
