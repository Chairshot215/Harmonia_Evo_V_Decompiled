.class public Lcom/htc/photowidget3d/widget/PortraitImageFrame;
.super Lcom/htc/photowidget3d/widget/FusionImageFrame;
.source "PortraitImageFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public getScenePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/htc/photowidget3d/util/CustomizeSetting;->getScenePath(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
