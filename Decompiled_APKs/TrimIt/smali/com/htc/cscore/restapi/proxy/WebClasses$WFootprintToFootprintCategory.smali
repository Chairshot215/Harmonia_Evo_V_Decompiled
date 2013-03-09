.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintToFootprintCategory;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprintToFootprintCategory"
.end annotation


# instance fields
.field public Footprint:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;

.field public FootprintCategory:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintCategory;

.field public FootprintCategoryId:Ljava/util/UUID;

.field public FootprintId:Ljava/util/UUID;

.field public Id:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
