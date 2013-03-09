.class public Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaAutoUploadSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PrivacyListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutRes:I

.field final synthetic this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# direct methods
.method public constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutRes"

    .prologue
    .line 881
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    .line 882
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 883
    iput p3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->mLayoutRes:I

    .line 884
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 885
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 891
    if-nez p2, :cond_3

    .line 893
    iget-object v5, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->mLayoutRes:I

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 894
    .local v4, view:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 901
    :goto_0
    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 902
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;

    iget-object v5, v5, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 903
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 904
    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 905
    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemRadioButton;

    .line 906
    .local v2, radioBtn:Lcom/htc/widget/HtcListItemRadioButton;
    invoke-virtual {p0, p1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;

    iget-boolean v5, v5, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mEnabled:Z

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 907
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemRadioButton;->setEnabled(Z)V

    .line 909
    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, divider:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 912
    if-nez p1, :cond_4

    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 916
    :cond_0
    iget-object v5, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isRoundedListItemNeeded()Z
    invoke-static {v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$3300(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 918
    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 919
    .local v1, item:Lcom/htc/widget/HtcListItem;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyListItemAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_5

    .line 921
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 929
    .end local v1           #item:Lcom/htc/widget/HtcListItem;
    :cond_2
    :goto_2
    return-object v4

    .line 898
    .end local v0           #divider:Landroid/view/View;
    .end local v2           #radioBtn:Lcom/htc/widget/HtcListItemRadioButton;
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #view:Landroid/view/View;
    :cond_3
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .restart local v0       #divider:Landroid/view/View;
    .restart local v2       #radioBtn:Lcom/htc/widget/HtcListItemRadioButton;
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_4
    move v5, v6

    .line 912
    goto :goto_1

    .line 925
    .restart local v1       #item:Lcom/htc/widget/HtcListItem;
    :cond_5
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_2
.end method
