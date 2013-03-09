.class public Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;
.super Ljava/lang/Object;
.source "HtcHubContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/json/HtcHubContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcHubItem"
.end annotation


# instance fields
.field public AppId:Ljava/lang/String;

.field public AppType:Ljava/lang/String;

.field public Author:Ljava/lang/String;

.field public Binary:Ljava/lang/String;

.field public BinaryUrl:Ljava/lang/String;

.field public Categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Description:Ljava/lang/String;

.field public Featured:Z

.field public GUID:Ljava/lang/String;

.field public HTCContent:Z

.field public Icon:Ljava/lang/String;

.field public MimeType:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Operator:Ljava/lang/String;

.field public PhysicalDeviceModelId:Ljava/lang/String;

.field public PreviewImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Price:Ljava/lang/String;

.field public PublishedDate:Ljava/lang/String;

.field public Regions:Ljava/lang/String;

.field public Size:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Vendor:Ljava/lang/String;

.field public Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
