.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintFavorite;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprintFavorite"
.end annotation


# instance fields
.field public Footprint:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;

.field public FootprintId:Ljava/util/UUID;

.field public Id:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
