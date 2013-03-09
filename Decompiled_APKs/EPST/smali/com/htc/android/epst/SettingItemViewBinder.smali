.class Lcom/htc/android/epst/SettingItemViewBinder;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMode:I


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .locals 1
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mMode:I

    .line 2021
    iput p1, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mMode:I

    .line 2022
    iput-object p2, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    .line 2023
    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 11
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 2026
    move-object v3, p2

    check-cast v3, Lcom/htc/android/epst/SettingItem;

    .line 2027
    .local v3, item:Lcom/htc/android/epst/SettingItem;
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2028
    .local v5, name:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2030
    .local v7, value:Landroid/widget/TextView;
    const-string v4, ""

    .line 2032
    .local v4, itemValue:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getStatus()I

    move-result v8

    if-nez v8, :cond_7

    .line 2033
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 2036
    iget-object v0, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/htc/android/epst/ListItemsActivity;

    .line 2038
    .local v0, bListActivity:Lcom/htc/android/epst/ListItemsActivity;
    iget v8, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 2040
    iget-boolean v8, v0, Lcom/htc/android/epst/ListItemsActivity;->LBSPDELOCK:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2042
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0400cb

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 2043
    const-string v4, "******"

    .line 2050
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->getItemTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "epst_scrtn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->getItemTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "d_data_username"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->getItemTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "d_data_wimax"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    const/4 v1, 0x1

    .line 2057
    .local v1, bSecretCode:Z
    :goto_1
    iget-boolean v8, v0, Lcom/htc/android/epst/ListItemsActivity;->bmEncodeShareSecret:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 2059
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0401b2

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 2060
    const-string v4, "******"

    .line 2079
    .end local v0           #bListActivity:Lcom/htc/android/epst/ListItemsActivity;
    .end local v1           #bSecretCode:Z
    :cond_2
    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2080
    const v8, 0x102000e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2081
    .local v2, icon:Landroid/widget/ImageView;
    iget v8, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->isEditable()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 2082
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/android/epst/translator/Translator;->getTypedInfo()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2083
    .local v6, type:I
    const/4 v8, 0x3

    if-ne v6, v8, :cond_a

    .line 2084
    const v8, 0x108003e

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2092
    :goto_3
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2097
    .end local v6           #type:I
    :goto_4
    const/4 v8, 0x1

    return v8

    .line 2044
    .end local v2           #icon:Landroid/widget/ImageView;
    .restart local v0       #bListActivity:Lcom/htc/android/epst/ListItemsActivity;
    :cond_3
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0400ca

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2045
    const-string v4, "******"

    goto/16 :goto_0

    .line 2050
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 2061
    .restart local v1       #bSecretCode:Z
    :cond_5
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0401b3

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 2062
    const-string v4, "******"

    goto :goto_2

    .line 2063
    :cond_6
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0401d8

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2064
    const-string v4, "******"

    goto/16 :goto_2

    .line 2070
    .end local v0           #bListActivity:Lcom/htc/android/epst/ListItemsActivity;
    .end local v1           #bSecretCode:Z
    :cond_7
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getStatus()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 2071
    iget-object v8, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v9, 0x7f040057

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 2072
    :cond_8
    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getStatus()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 2073
    iget-object v8, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v9, 0x7f040056

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 2076
    :cond_9
    iget-object v8, p0, Lcom/htc/android/epst/SettingItemViewBinder;->mActivity:Landroid/app/Activity;

    const v9, 0x7f040084

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 2085
    .restart local v2       #icon:Landroid/widget/ImageView;
    .restart local v6       #type:I
    :cond_a
    const/4 v8, 0x7

    if-ne v6, v8, :cond_b

    .line 2086
    const v8, 0x108003e

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2087
    :cond_b
    const/16 v8, 0x8

    if-ne v6, v8, :cond_c

    .line 2088
    const v8, 0x108003e

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2090
    :cond_c
    const v8, 0x1080045

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2094
    .end local v6           #type:I
    :cond_d
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method
