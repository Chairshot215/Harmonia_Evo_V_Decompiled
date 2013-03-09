.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v9, p2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    move-object v8, p2

    check-cast v8, Landroid/view/ViewGroup;

    instance-of v9, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    :cond_0
    if-nez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x1020224

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Landroid/content/Intent;

    if-eqz v9, :cond_4

    move-object v2, v7

    check-cast v2, Landroid/content/Intent;

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v9, 0x2

    new-array v5, v9, [I

    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v11, v11, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v11, v2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
