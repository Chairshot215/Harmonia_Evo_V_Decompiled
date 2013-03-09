.class Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcCreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCreateShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/preference/HtcPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field protected final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/HtcCreateShortcut;


# direct methods
.method public constructor <init>(Lcom/android/settings/HtcCreateShortcut;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->this$0:Lcom/android/settings/HtcCreateShortcut;

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 339
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings/HtcCreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 341
    invoke-virtual {p1}, Lcom/android/settings/HtcCreateShortcut;->makeListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    .line 346
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "position"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 384
    const/4 v3, 0x0

    .line 386
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 387
    iget-object v4, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040065

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 390
    new-instance v1, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;Lcom/android/settings/HtcCreateShortcut$1;)V

    .line 391
    .local v1, holder:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;
    const v4, 0x7f080027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 392
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 396
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 406
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->getItem(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    .line 407
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 411
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, v1, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v4, v1, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    return-object v3

    .line 401
    .end local v0           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v1           #holder:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    move-object v3, p2

    .line 402
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;

    .restart local v1       #holder:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 4
    .parameter "position"

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 359
    :cond_0
    :goto_0
    return-object v0

    .line 353
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->this$0:Lcom/android/settings/HtcCreateShortcut;

    iget-object v2, v2, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 355
    .local v1, item:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "position"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    goto :goto_0
.end method
