.class Lcom/android/keychain/KeyChainActivity$CertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;
    }
.end annotation


# instance fields
.field private final mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/keychain/KeyChainActivity;


# direct methods
.method private constructor <init>(Lcom/android/keychain/KeyChainActivity;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, aliases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mSubjects:Ljava/util/List;

    .line 270
    iput-object p2, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;

    .line 271
    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mSubjects:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keychain/KeyChainActivity;Ljava/util/List;Lcom/android/keychain/KeyChainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;-><init>(Lcom/android/keychain/KeyChainActivity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mSubjects:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "adapterPosition"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "adapterPosition"

    .prologue
    .line 280
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "adapterPosition"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 284
    if-nez p2, :cond_0

    .line 285
    iget-object v7, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 286
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f020003

    invoke-virtual {v3, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 287
    new-instance v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;

    invoke-direct {v2, v10}, Lcom/android/keychain/KeyChainActivity$ViewHolder;-><init>(Lcom/android/keychain/KeyChainActivity$1;)V

    .line 288
    .local v2, holder:Lcom/android/keychain/KeyChainActivity$ViewHolder;
    const v7, 0x7f050002

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mAliasTextView:Landroid/widget/TextView;

    .line 289
    const v7, 0x7f050003

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mSubjectTextView:Landroid/widget/TextView;

    .line 290
    const v7, 0x7f050004

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 291
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v7, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    .local v1, alias:Ljava/lang/String;
    iget-object v7, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mAliasTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v7, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mSubjects:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .local v6, subject:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 302
    new-instance v7, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;

    iget-object v9, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mSubjectTextView:Landroid/widget/TextView;

    invoke-direct {v7, p0, p1, v9, v10}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;-><init>(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;ILandroid/widget/TextView;Lcom/android/keychain/KeyChainActivity$1;)V

    new-array v9, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v9}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move-object v5, p3

    .line 307
    check-cast v5, Landroid/widget/ListView;

    .line 308
    .local v5, lv:Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    .line 309
    .local v4, listViewCheckedItemPosition:I
    add-int/lit8 v0, v4, -0x1

    .line 310
    .local v0, adapterCheckedItemPosition:I
    iget-object v9, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 311
    return-object p2

    .line 293
    .end local v0           #adapterCheckedItemPosition:I
    .end local v1           #alias:Ljava/lang/String;
    .end local v2           #holder:Lcom/android/keychain/KeyChainActivity$ViewHolder;
    .end local v4           #listViewCheckedItemPosition:I
    .end local v5           #lv:Landroid/widget/ListView;
    .end local v6           #subject:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;

    .restart local v2       #holder:Lcom/android/keychain/KeyChainActivity$ViewHolder;
    goto :goto_0

    .line 304
    .restart local v1       #alias:Ljava/lang/String;
    .restart local v6       #subject:Ljava/lang/String;
    :cond_1
    iget-object v7, v2, Lcom/android/keychain/KeyChainActivity$ViewHolder;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #adapterCheckedItemPosition:I
    .restart local v4       #listViewCheckedItemPosition:I
    .restart local v5       #lv:Landroid/widget/ListView;
    :cond_2
    move v7, v8

    .line 310
    goto :goto_2
.end method
