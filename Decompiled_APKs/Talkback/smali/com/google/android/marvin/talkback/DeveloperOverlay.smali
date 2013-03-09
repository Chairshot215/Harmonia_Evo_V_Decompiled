.class public Lcom/google/android/marvin/talkback/DeveloperOverlay;
.super Lcom/googlecode/eyesfree/widget/SimpleOverlay;
.source "DeveloperOverlay.java"


# static fields
.field public static final MIN_API_LEVEL:I = 0xe

.field private static sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;


# instance fields
.field private final mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

.field private final mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 42
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->setContentView(I)V

    .line 48
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/utils/HighlightBoundsView;

    iput-object v1, p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    .line 49
    iget-object v1, p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/utils/HighlightBoundsView;->setHighlightColor(I)V

    .line 51
    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/DeveloperOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/utils/HighlightBoundsView;

    iput-object v1, p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    .line 52
    iget-object v1, p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/utils/HighlightBoundsView;->setHighlightColor(I)V

    .line 53
    return-void
.end method

.method public static removeInvalidNodes()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->removeInvalidNodes()V

    .line 74
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->postInvalidate()V

    .line 76
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->removeInvalidNodes()V

    .line 77
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->postInvalidate()V

    goto :goto_0
.end method

.method public static updateNodes(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "source"
    .parameter "announced"

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->clear()V

    .line 86
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0, p0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->add(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 87
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->postInvalidate()V

    .line 89
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->clear()V

    .line 90
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/utils/HighlightBoundsView;->add(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 91
    sget-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onHide()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    .line 64
    iget-object v0, p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->clear()V

    .line 65
    iget-object v0, p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->mAnnounceBounds:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->clear()V

    .line 66
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lcom/google/android/marvin/talkback/DeveloperOverlay;->sInstance:Lcom/google/android/marvin/talkback/DeveloperOverlay;

    .line 58
    return-void
.end method
