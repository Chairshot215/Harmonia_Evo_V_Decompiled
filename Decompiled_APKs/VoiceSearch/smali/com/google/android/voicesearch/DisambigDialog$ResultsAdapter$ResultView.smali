.class Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
.super Landroid/widget/LinearLayout;
.source "DisambigDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultView"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 3
    .parameter "context"
    .parameter "action"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 311
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 313
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04000f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 314
    const v1, 0x7f0e0035

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mIcon:Landroid/widget/ImageView;

    .line 315
    const v1, 0x7f0e0036

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mTitle:Landroid/widget/TextView;

    .line 316
    const v1, 0x7f0e0037

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mSubtitle:Landroid/widget/TextView;

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->setAction(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 318
    return-void
.end method


# virtual methods
.method public setAction(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 7
    .parameter "context"
    .parameter "action"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 321
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListIcon()I

    move-result v0

    .line 322
    .local v0, icon:I
    iget-object v6, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    invoke-virtual {p2, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListTitle(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v2

    .line 326
    .local v2, title:Landroid/text/Spanned;
    iget-object v6, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v3, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListSubtitle()Landroid/text/Spanned;

    move-result-object v1

    .line 330
    .local v1, subtitle:Landroid/text/Spanned;
    iget-object v3, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mSubtitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v3, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-void

    .end local v1           #subtitle:Landroid/text/Spanned;
    .end local v2           #title:Landroid/text/Spanned;
    :cond_0
    move v3, v5

    .line 322
    goto :goto_0

    .restart local v2       #title:Landroid/text/Spanned;
    :cond_1
    move v3, v5

    .line 326
    goto :goto_1

    .restart local v1       #subtitle:Landroid/text/Spanned;
    :cond_2
    move v4, v5

    .line 330
    goto :goto_2
.end method
