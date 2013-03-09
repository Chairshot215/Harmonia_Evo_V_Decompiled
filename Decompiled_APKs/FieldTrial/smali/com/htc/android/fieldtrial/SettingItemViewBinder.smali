.class Lcom/htc/android/fieldtrial/SettingItemViewBinder;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    .line 450
    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v7, 0x1

    .line 453
    move-object v1, p2

    check-cast v1, Lcom/htc/android/fieldtrial/SettingItem;

    .line 454
    .local v1, item:Lcom/htc/android/fieldtrial/SettingItem;
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 455
    .local v3, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 457
    .local v4, value:Landroid/widget/TextView;
    const-string v2, ""

    .line 458
    .local v2, itemValue:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 459
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 467
    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const v5, 0x102000e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 469
    .local v0, icon:Landroid/widget/ImageView;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    return v7

    .line 461
    .end local v0           #icon:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getStatus()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 462
    iget-object v5, p0, Lcom/htc/android/fieldtrial/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v6, 0x7f05000a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 465
    :cond_1
    iget-object v5, p0, Lcom/htc/android/fieldtrial/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v6, 0x7f050009

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
