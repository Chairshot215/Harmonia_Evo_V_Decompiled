.class public Lcom/android/mms/ui/MessageUtils$SkinUtil;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinUtil"
.end annotation


# static fields
.field public static RES_LIST_SELECTOR_BACKGROUND:Ljava/lang/String;

.field public static RES_NOTIFICATION_BALL:Ljava/lang/String;

.field public static RES_NOTIFICATION_NEW_BALL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4334
    const-string v0, "list_selector_background"

    sput-object v0, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_LIST_SELECTOR_BACKGROUND:Ljava/lang/String;

    .line 4335
    const-string v0, "common_notification_on"

    sput-object v0, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_NOTIFICATION_BALL:Ljava/lang/String;

    .line 4336
    const-string v0, "common_notification_new_on"

    sput-object v0, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_NOTIFICATION_NEW_BALL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4333
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBgDrawable(Landroid/content/Context;Landroid/view/View;I)V
    .locals 5
    .parameter "context"
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 4364
    if-eqz p1, :cond_0

    .line 4366
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 4367
    .local v3, padingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 4368
    .local v1, padRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 4369
    .local v2, padTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 4370
    .local v0, padBotoom:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4371
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4373
    .end local v0           #padBotoom:I
    .end local v1           #padRight:I
    .end local v2           #padTop:I
    .end local v3           #padingLeft:I
    :cond_0
    return-void
.end method

.method public static changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "view"
    .parameter "res_name"
    .parameter "defRes"

    .prologue
    .line 4402
    if-eqz p1, :cond_0

    .line 4404
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 4405
    .local v3, padingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 4406
    .local v1, padRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 4407
    .local v2, padTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 4408
    .local v0, padBotoom:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, p2, p3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4410
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4412
    .end local v0           #padBotoom:I
    .end local v1           #padRight:I
    .end local v2           #padTop:I
    .end local v3           #padingLeft:I
    :cond_0
    return-void
.end method

.method public static changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V
    .locals 7
    .parameter "context"
    .parameter "view"
    .parameter "res_name"
    .parameter "defRes"
    .parameter "viewType"

    .prologue
    const v6, 0x7f0b00e7

    .line 4377
    if-eqz p1, :cond_0

    .line 4379
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 4380
    .local v3, padingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 4381
    .local v1, padRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 4382
    .local v2, padTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 4383
    .local v0, padBotoom:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, p2, p3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4386
    const/4 v4, 0x1

    if-ne p4, v4, :cond_1

    .line 4387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v4, v2, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4399
    .end local v0           #padBotoom:I
    .end local v1           #padRight:I
    .end local v2           #padTop:I
    .end local v3           #padingLeft:I
    :cond_0
    :goto_0
    return-void

    .line 4393
    .restart local v0       #padBotoom:I
    .restart local v1       #padRight:I
    .restart local v2       #padTop:I
    .restart local v3       #padingLeft:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v4, v2, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static getListSelectorBackgroundResource(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4339
    sget-object v0, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_LIST_SELECTOR_BACKGROUND:Ljava/lang/String;

    const v1, 0x1080062

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationBallResource(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 4346
    sget-object v0, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_NOTIFICATION_BALL:Ljava/lang/String;

    const v1, 0x7f020140

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWindowBackgroundRes(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 4352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4353
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 4355
    const-string v1, "common_app_bkg"

    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 4359
    :goto_0
    return v0

    .line 4358
    :cond_0
    const v0, 0x106000c

    goto :goto_0
.end method
