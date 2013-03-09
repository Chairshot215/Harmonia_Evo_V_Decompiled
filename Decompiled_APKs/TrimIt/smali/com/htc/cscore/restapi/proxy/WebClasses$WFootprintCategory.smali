.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintCategory;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprintCategory"
.end annotation


# instance fields
.field public FootprintCount:I

.field public Id:Ljava/util/UUID;

.field public Name:Ljava/lang/String;

.field public SortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
