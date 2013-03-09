.class public Lcom/htc/feedback/FeedbackInfoPreference;
.super Lcom/htc/preference/HtcPreference;
.source "FeedbackInfoPreference.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "FeedbackInfoPreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/feedback/FeedbackInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "parent"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 31
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/htc/feedback/FeedbackInfoPreference;->getWidgetLayoutResource()I

    move-result v6

    .line 34
    .local v6, widgetId:I
    if-ltz v6, :cond_0

    .line 35
    const/4 v5, 0x0

    .local v5, widget:Landroid/view/View;
    const/4 v2, 0x0

    .line 36
    .local v2, imgView:Landroid/view/View;
    const v7, 0x1020018

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 37
    if-eqz v5, :cond_0

    instance-of v7, v5, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    move-object v7, v5

    .line 38
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 39
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    move-object v7, v5

    .line 40
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/htc/feedback/FeedbackInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "common_more_view"

    const v9, 0x2080065

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .local v3, resId:I
    move-object v7, v2

    .line 44
    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    check-cast v2, Landroid/widget/ImageView;

    .end local v2           #imgView:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 52
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #resId:I
    .end local v5           #widget:Landroid/view/View;
    .end local v6           #widgetId:I
    :cond_0
    return-object v4

    .line 39
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #imgView:Landroid/view/View;
    .restart local v5       #widget:Landroid/view/View;
    .restart local v6       #widgetId:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
