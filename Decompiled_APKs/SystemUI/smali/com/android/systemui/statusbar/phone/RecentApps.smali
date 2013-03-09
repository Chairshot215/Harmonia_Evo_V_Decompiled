.class public Lcom/android/systemui/statusbar/phone/RecentApps;
.super Landroid/widget/HorizontalScrollView;
.source "RecentApps.java"


# static fields
.field protected static final MAX_RECENT_TASKS:I = 0x10

.field protected static final NUM_BUTTONS:I = 0x8

.field protected static final Update_Icon:I

.field private static bFirst:Z

.field protected static mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;


# instance fields
.field protected final mButtons:[Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mNewOrient:I

.field protected mOldOrient:I

.field protected mRecentAppIconListener:Landroid/view/View$OnClickListener;

.field protected mRecentAppsIconSize:I

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

#Ignoring field with duplicate signature
#.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mShortcutHandler:Landroid/os/Handler;

.field protected mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/RecentApps;->bFirst:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mNewOrient:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mOldOrient:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mRecentAppsIconSize:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mShortcutHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/RecentApps$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RecentApps$2;-><init>(Lcom/android/systemui/statusbar/phone/RecentApps;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RecentApps;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mRecentAppsIconSize:I

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarStyleable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/RecentApps$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/RecentApps$1;-><init>(Lcom/android/systemui/statusbar/phone/RecentApps;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mShortcutHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected getViewIndex(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e004d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected loadButtons(Z)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v4, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->getRecentTask()V

    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->getTaskNumber()I

    move-result v4

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->getRecentItem(I)Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/RecentApps;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v8, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 11

    const/16 v10, 0x1e0

    const/4 v9, 0x1

    const v8, -0xddddde

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x0

    const v5, 0x7f0e004d

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const v5, 0x7f0e004e

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x2

    const v5, 0x7f0e004f

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x3

    const v5, 0x7f0e0050

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x4

    const v5, 0x7f0e0051

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x5

    const v5, 0x7f0e0052

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x6

    const v5, 0x7f0e0053

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    const/4 v7, 0x7

    const v5, 0x7f0e0054

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RecentApps;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    if-eqz v5, :cond_4

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_0

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v5, v10, :cond_0

    const v5, 0x7f02021b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    :goto_0
    iput v9, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mOldOrient:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    const v5, 0x7f020109

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mRecentAppIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v10, :cond_1

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    const v5, 0x7f02021f

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x21c

    if-ne v5, v6, :cond_2

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x3c0

    if-ne v5, v6, :cond_2

    const v5, 0x7f02021d

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x2d0

    if-ne v5, v6, :cond_3

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x500

    if-ne v5, v6, :cond_3

    const v5, 0x7f020219

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundColor(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RecentApps;->updateStyleableResource()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    const/16 v6, 0x2d0

    const/16 v5, 0x21c

    const/16 v4, 0x140

    const v3, -0xddddde

    const/16 v2, 0x1e0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RecentApps;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mNewOrient:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mOldOrient:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mNewOrient:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mNewOrient:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    if-ne p3, v4, :cond_1

    if-ne p1, v2, :cond_1

    const v0, 0x7f02021c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mNewOrient:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mOldOrient:I

    :cond_0
    return-void

    :cond_1
    if-ne p3, v2, :cond_2

    const/16 v0, 0x320

    if-ne p1, v0, :cond_2

    const v0, 0x7f020220

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    if-ne p3, v5, :cond_3

    const/16 v0, 0x3c0

    if-ne p1, v0, :cond_3

    const v0, 0x7f02021e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    if-ne p3, v6, :cond_4

    const/16 v0, 0x500

    if-ne p1, v0, :cond_4

    const v0, 0x7f02021a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundColor(I)V

    goto :goto_0

    :cond_5
    if-ne p3, v2, :cond_6

    if-ne p1, v4, :cond_6

    const v0, 0x7f02021b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x320

    if-ne p3, v0, :cond_7

    if-ne p1, v2, :cond_7

    const v0, 0x7f02021f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x3c0

    if-ne p3, v0, :cond_8

    if-ne p1, v5, :cond_8

    const v0, 0x7f02021d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x500

    if-ne p3, v0, :cond_9

    if-ne p1, v6, :cond_9

    const v0, 0x7f020219

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundResource(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/RecentApps;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public scrollToZero()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->scrollTo(II)V

    return-void
.end method

.method protected setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ".*\\W.*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mRecentAppsIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mRecentAppsIconSize:I

    invoke-virtual {p3, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {v0, v3, p3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public setRecentApplications()V
    .locals 5

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/RecentApps;->bFirst:Z

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "favorite_item_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "favorite_intent"

    const-string v4, "component=com.htc.android.mail/.MailListTab"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/phone/RecentApps;->mUpdateRecv:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mShortcutHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->setUpdateHandler(Landroid/os/Handler;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/RecentApps;->bFirst:Z

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/RecentApps;->loadButtons(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RecentApps;->updateStyleableResource()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method protected updateStyleableResource()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mButtons:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RecentApps;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v5, "shortcut_selector"

    const v6, 0x7f020109

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v8, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
