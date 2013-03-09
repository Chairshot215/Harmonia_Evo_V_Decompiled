.class public abstract Lcom/android/systemui/statusbar/phone/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    }
.end annotation


# static fields
.field private static final TICKER_SEGMENT_DELAY:I = 0xbb8


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconScale:F

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    const v7, 0x10a0029

    const v6, 0x10a0028

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/Ticker$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/Ticker$1;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f0a000e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    const v4, 0x7f0e0066

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTickerView:Landroid/view/View;

    const v4, 0x7f0e0067

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setScaleY(F)V

    const v4, 0x7f0e0068

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/ImageSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    return-void
.end method

.method private scheduleAdvance()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->iconLevel:I

    if-ne v0, v1, :cond_1

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    invoke-static {v12, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v10, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v10, p0, p1, v8, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v6, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    iput-boolean v4, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerStarting()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    goto/16 :goto_0
.end method

.method public halt()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerHalting()V

    return-void
.end method

.method public reflowText()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    iget v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method
