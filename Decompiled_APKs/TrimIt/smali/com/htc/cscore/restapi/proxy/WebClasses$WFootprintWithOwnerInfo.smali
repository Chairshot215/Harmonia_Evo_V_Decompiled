.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintWithOwnerInfo;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprintWithOwnerInfo"
.end annotation


# instance fields
.field public FirstName:Ljava/lang/String;

.field public Footprint:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;

.field public LastName:Ljava/lang/String;

.field public ProfilePhotoId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
