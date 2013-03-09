.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFootprint"
.end annotation


# instance fields
.field public Address:Ljava/lang/String;

.field public CreateDate:Ljava/util/Date;

.field public Description:Ljava/lang/String;

.field public FootprintCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintCategory;",
            ">;"
        }
    .end annotation
.end field

.field public FootprintCategoriesUpdated:Ljava/lang/Boolean;

.field public FootprintImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage;",
            ">;"
        }
    .end annotation
.end field

.field public FootprintImagesUpdated:Ljava/lang/Boolean;

.field public FootprintMemo:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintMemo;

.field public Id:Ljava/util/UUID;

.field public ImageUrl:Ljava/lang/String;

.field public IsPrivate:Z

.field public Latitude:Ljava/lang/Double;

.field public Longitude:Ljava/lang/Double;

.field public Name:Ljava/lang/String;

.field public Note:Ljava/lang/String;

.field public OwnerInfo:Lcom/htc/cscore/restapi/proxy/WebClasses$WOwnerInfo;

.field public PhoneNumber:Ljava/lang/String;

.field public Rating:I

.field public Timestamp:Ljava/util/Date;

.field public VoiceMemoTime:I

.field public WebsiteURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
