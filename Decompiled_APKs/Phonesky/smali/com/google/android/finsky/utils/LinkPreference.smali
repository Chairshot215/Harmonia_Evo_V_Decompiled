.class public Lcom/google/android/finsky/utils/LinkPreference;
.super Landroid/preference/Preference;
.source "LinkPreference.java"


# instance fields
.field private mLink:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 41
    const v1, 0x7f08015f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, linkView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/google/android/finsky/utils/LinkPreference;->mLink:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setLink(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 31
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/LinkPreference;->mLink:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/utils/LinkPreference;->mLink:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/google/android/finsky/utils/LinkPreference;->mLink:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/LinkPreference;->notifyChanged()V

    .line 35
    :cond_2
    return-void
.end method
