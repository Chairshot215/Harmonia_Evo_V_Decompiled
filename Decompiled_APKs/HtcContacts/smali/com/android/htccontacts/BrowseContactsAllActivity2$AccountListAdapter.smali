.class Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutRes:I

.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .line 788
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 785
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayLabel:Ljava/lang/CharSequence;

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 790
    iput p3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->mLayoutRes:I

    .line 791
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 793
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 800
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v6, v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v4, v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mDataSet:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v1

    .line 803
    .local v1, source:Lcom/android/htccontacts/model/AccountType;
    if-nez p2, :cond_1

    .line 804
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->mLayoutRes:I

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 808
    .local v3, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    iget-object v4, v4, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;->mAccountType:Ljava/lang/String;

    const-string v5, "com.htc.contacts.default.allcontacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 809
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a03a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayLabel:Ljava/lang/CharSequence;

    .line 814
    :goto_1
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 816
    const v4, 0x2020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 817
    .local v2, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 820
    const v4, 0x202001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 821
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 822
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 823
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 827
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-object v3

    .line 806
    .end local v2           #textView:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 811
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->displayLabel:Ljava/lang/CharSequence;

    goto :goto_1
.end method
