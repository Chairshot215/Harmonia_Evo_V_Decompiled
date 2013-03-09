.class final Lcom/android/phone/ManualSelectNetwork$StarredPreference;
.super Lcom/htc/preference/HtcPreference;
.source "ManualSelectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManualSelectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StarredPreference"
.end annotation


# instance fields
.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 857
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 861
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 863
    .local v2, view:Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 865
    .local v3, widgetFrame:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 867
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 868
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 869
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 872
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "btn_star_big_on_selected"

    const v6, 0x10801c6

    invoke-static {v4, v5, v6}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 874
    .local v0, drawableId:I
    if-lez v0, :cond_1

    .line 875
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 879
    const/16 v4, 0xa

    invoke-virtual {v1, v7, v8, v4, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 881
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 884
    .end local v0           #drawableId:I
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_2
    iget-boolean v4, p0, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->checked:Z

    if-eqz v4, :cond_3

    .line 885
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 888
    :goto_0
    return-object v2

    .line 887
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->checked:Z

    .line 897
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->notifyChanged()V

    .line 898
    return-void
.end method
