.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprintImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;
    }
.end annotation


# instance fields
.field public ContentType:Ljava/lang/String;

.field public FileType:Ljava/lang/String;

.field public FootprintId:Ljava/util/UUID;

.field public Id:Ljava/util/UUID;

.field public ImageType:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

.field public Name:Ljava/lang/String;

.field public Timestamp:Ljava/util/Date;

.field public Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method
