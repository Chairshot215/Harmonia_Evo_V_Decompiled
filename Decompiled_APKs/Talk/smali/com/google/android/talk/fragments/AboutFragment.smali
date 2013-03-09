.class public final Lcom/google/android/talk/fragments/AboutFragment;
.super Landroid/app/Fragment;
.source "AboutFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Talk:AboutFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 33
    const/high16 v7, 0x7f04

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, contentView:Landroid/view/View;
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 38
    .local v2, feedbackLink:Landroid/text/SpannableString;
    new-instance v7, Lcom/google/android/talk/fragments/AboutFragment$1;

    invoke-direct {v7, p0}, Lcom/google/android/talk/fragments/AboutFragment$1;-><init>(Lcom/google/android/talk/fragments/AboutFragment;)V

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 44
    const v7, 0x7f100005

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, feedbackLinkView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 53
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    const v7, 0x7f100002

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00e7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ed

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .local v4, licensesLink:Landroid/text/SpannableString;
    new-instance v7, Lcom/google/android/talk/fragments/AboutFragment$2;

    invoke-direct {v7, p0}, Lcom/google/android/talk/fragments/AboutFragment$2;-><init>(Lcom/google/android/talk/fragments/AboutFragment;)V

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 68
    const v7, 0x7f100009

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    .local v5, licensesLinkView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    return-object v0

    .line 55
    .end local v4           #licensesLink:Landroid/text/SpannableString;
    .end local v5           #licensesLinkView:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Talk:AboutFragment"

    const-string v8, "Failed to determine package version/code"

    invoke-static {v7, v8, v1}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
