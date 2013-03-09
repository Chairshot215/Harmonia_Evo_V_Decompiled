.class final Lcom/android/phone/NetworkSetting$StarredPreference;
.super Lcom/htc/preference/HtcPreference;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
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
    .line 913
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 914
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 918
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 920
    .local v1, view:Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 922
    .local v2, widgetFrame:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 923
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 924
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 926
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$StarredPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 927
    .local v0, imageView:Landroid/widget/ImageView;
    const v3, 0x10801c6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 929
    const/16 v3, 0xa

    invoke-virtual {v0, v4, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 931
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 934
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting$StarredPreference;->checked:Z

    if-eqz v3, :cond_2

    .line 935
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 939
    :goto_0
    return-object v1

    .line 937
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting$StarredPreference;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting$StarredPreference;->checked:Z

    .line 948
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$StarredPreference;->notifyChanged()V

    .line 949
    return-void
.end method
