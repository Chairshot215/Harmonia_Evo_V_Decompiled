.class public Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;
.super Ljava/lang/Object;
.source "CustomizationCommandBarSlideShow.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CustomizationCommandBarSlideShow"


# instance fields
.field mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->mViewRoot:Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method public doCustomize()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public getResourceId_Back()I
    .locals 1

    .prologue
    .line 21
    const v0, 0x2020006

    return v0
.end method

.method public getResourceId_Next()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x202000b

    return v0
.end method

.method public getResourceId_PlayPause()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x202000a

    return v0
.end method

.method public getResourceId_Previous()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x2020007

    return v0
.end method

.method public getResourceId_Setting()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x202000e

    return v0
.end method

.method public setResource(Landroid/view/View;)V
    .locals 0
    .parameter "viewRoot"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->mViewRoot:Landroid/view/View;

    .line 18
    return-void
.end method
