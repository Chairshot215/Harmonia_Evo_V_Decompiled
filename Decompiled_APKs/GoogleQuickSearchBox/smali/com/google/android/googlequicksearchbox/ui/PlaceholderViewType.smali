.class Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
.source "PlaceholderViewType.java"


# instance fields
.field private final mSeparatorHeight:I

.field private final mSuggestionHeight:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resources"

    .prologue
    .line 38
    const-string v0, "placeholder"

    const v1, 0x7f040005

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;-><init>(Ljava/lang/String;I)V

    .line 39
    const v0, 0x7f0d0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;->mSuggestionHeight:F

    .line 44
    const v0, 0x7f0d0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;->mSeparatorHeight:I

    .line 45
    return-void
.end method

.method private getPixelHeightForSpan(I)I
    .locals 3
    .parameter "span"

    .prologue
    .line 48
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;->mSuggestionHeight:F

    mul-float/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;->mSeparatorHeight:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isPlaceholder()Z

    move-result v0

    return v0
.end method

.method public prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V
    .locals 3
    .parameter "entry"
    .parameter "view"

    .prologue
    .line 53
    const v1, 0x7f10000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, updating:Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isPlaceholderSpinner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getPlaceholderSpan()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;->getPixelHeightForSpan(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    return-void

    .line 57
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
