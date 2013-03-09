.class public abstract Lcom/htc/home/personalize/abstractresource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/abstractresource/Resource$Const;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private appSource:Ljava/lang/String;

.field private appType:Ljava/lang/String;

.field private categoryID:Ljava/lang/String;

.field private contentSize:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private displayOrder:I

.field private iconURL:Ljava/lang/String;

.field private navigateTo:Ljava/lang/String;

.field private previewImageLandscape:Ljava/lang/String;

.field private previewImagePortrait:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field private publishedDate:Ljava/lang/String;

.field private targetUrl:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private viewType:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "productID"
    .parameter "iconURL"
    .parameter "strCateID"
    .parameter "displayName"
    .parameter "navigateTo"
    .parameter "displayOrder"
    .parameter "appType"
    .parameter "appId"
    .parameter "appPackageName"
    .parameter "appSource"
    .parameter "versionCode"
    .parameter "publishedDate"
    .parameter "price"
    .parameter "contentSize"
    .parameter "previewImageLandscape"
    .parameter "previewImagePortrait"
    .parameter "viewType"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/htc/home/personalize/abstractresource/Resource;->productID:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/htc/home/personalize/abstractresource/Resource;->iconURL:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/htc/home/personalize/abstractresource/Resource;->categoryID:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/htc/home/personalize/abstractresource/Resource;->displayName:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/htc/home/personalize/abstractresource/Resource;->navigateTo:Ljava/lang/String;

    .line 43
    iput p6, p0, Lcom/htc/home/personalize/abstractresource/Resource;->displayOrder:I

    .line 44
    iput-object p7, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appType:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appId:Ljava/lang/String;

    .line 46
    iput-object p9, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appPackageName:Ljava/lang/String;

    .line 47
    iput-object p10, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appSource:Ljava/lang/String;

    .line 48
    iput-object p11, p0, Lcom/htc/home/personalize/abstractresource/Resource;->versionCode:Ljava/lang/String;

    .line 49
    iput-object p12, p0, Lcom/htc/home/personalize/abstractresource/Resource;->publishedDate:Ljava/lang/String;

    .line 50
    iput-object p13, p0, Lcom/htc/home/personalize/abstractresource/Resource;->price:Ljava/lang/String;

    .line 51
    iput-object p14, p0, Lcom/htc/home/personalize/abstractresource/Resource;->contentSize:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->previewImageLandscape:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->previewImagePortrait:Ljava/lang/String;

    .line 54
    move/from16 v0, p17

    iput v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->viewType:I

    .line 55
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appSource:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->categoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->contentSize:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->displayOrder:I

    return v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigateTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->navigateTo:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImageLandscape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->previewImageLandscape:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImagePortrait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->previewImagePortrait:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->publishedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, ""

    return-object v0
.end method

.method public abstract getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/home/personalize/abstractresource/Resource;->viewType:I

    return v0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "strUrl"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/home/personalize/abstractresource/Resource;->targetUrl:Ljava/lang/String;

    .line 135
    return-void
.end method
