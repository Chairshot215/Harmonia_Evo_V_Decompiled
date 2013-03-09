.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceSetting;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVirtualDeviceSetting"
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public Name:Ljava/lang/String;

.field public Timestamp:Ljava/util/Date;

.field public Value:Ljava/lang/String;

.field public VirtualDevice:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
