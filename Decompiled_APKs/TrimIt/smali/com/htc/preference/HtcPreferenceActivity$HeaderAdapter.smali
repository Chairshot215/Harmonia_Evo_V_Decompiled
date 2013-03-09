.class Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
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
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    .line 272
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 273
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 274
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

    .line 281
    if-nez p2, :cond_0

    .line 282
    iget-object v5, p0, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x10900bf

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 284
    .local v4, view:Landroid/view/View;
    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/htc/preference/HtcPreferenceActivity$1;)V

    .line 285
    .local v1, holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 286
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 287
    const v5, 0x1020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 288
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 298
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;->loadContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 299
    .local v2, res:Landroid/content/res/Resources;
    iget-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 304
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 305
    iget-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_1
    return-object v4

    .line 290
    .end local v0           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v1           #holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #summary:Ljava/lang/CharSequence;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .line 291
    .restart local v4       #view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v1       #holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 308
    .restart local v0       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v2       #res:Landroid/content/res/Resources;
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, v1, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
