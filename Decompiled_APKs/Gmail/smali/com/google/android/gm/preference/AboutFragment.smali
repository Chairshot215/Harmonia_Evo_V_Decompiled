.class public final Lcom/google/android/gm/preference/AboutFragment;
.super Landroid/app/Fragment;
.source "AboutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 34
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 35
    const/high16 v29, 0x7f04

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 38
    .local v28, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 39
    const v29, 0x7f0f0007

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 40
    .local v13, logoView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020064

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    const v29, 0x7f0f000d

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 43
    .local v8, descriptionView:Landroid/widget/TextView;
    const v29, 0x7f0c0021

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 46
    .end local v8           #descriptionView:Landroid/widget/TextView;
    .end local v13           #logoView:Landroid/widget/ImageView;
    :cond_0
    const v29, 0x7f0f0008

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 48
    .local v27, versionTextView:Landroid/widget/TextView;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 51
    .local v26, version:Ljava/lang/String;
    const v29, 0x7f0c0025

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v26, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v26           #version:Ljava/lang/String;
    :goto_0
    const v29, 0x7f0f0009

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 57
    .local v7, copyRightTextView:Landroid/widget/TextView;
    const v29, 0x7f0c0024

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/util/Calendar;->get(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v29, 0x7f0f000a

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 62
    .local v9, feebackLinkView:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    .line 63
    .local v14, movementMethod:Landroid/text/method/MovementMethod;
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 65
    new-instance v24, Lcom/google/android/gm/preference/AboutFragment$1;

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/preference/AboutFragment$1;-><init>(Lcom/google/android/gm/preference/AboutFragment;Ljava/lang/String;)V

    .line 71
    .local v24, surveyLinkSpan:Landroid/text/style/URLSpan;
    const v29, 0x7f0c001a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, feedbackString:Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v10, feedback:Landroid/text/Spannable;
    const/16 v29, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x22

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v10, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 76
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v29, 0x7f0f000b

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 80
    .local v23, reportProblemLinkView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/gm/Utils;->isGoogleFeedbackInstalled(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 82
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    new-instance v5, Lcom/google/android/gm/preference/AboutFragment$2;

    const-string v29, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Lcom/google/android/gm/preference/AboutFragment$2;-><init>(Lcom/google/android/gm/preference/AboutFragment;Ljava/lang/String;)V

    .line 91
    .local v5, bugReportLinkSpan:Landroid/text/style/URLSpan;
    const v29, 0x7f0c001e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, bugReportString:Ljava/lang/String;
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    .local v22, reportProblem:Landroid/text/Spannable;
    const/16 v29, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x22

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v5, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v5           #bugReportLinkSpan:Landroid/text/style/URLSpan;
    .end local v6           #bugReportString:Ljava/lang/String;
    .end local v22           #reportProblem:Landroid/text/Spannable;
    :goto_1
    const v29, 0x7f0f000e

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 106
    .local v17, openSourceLicenseView:Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    new-instance v15, Lcom/google/android/gm/preference/AboutFragment$3;

    const-string v29, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v15, v0, v1}, Lcom/google/android/gm/preference/AboutFragment$3;-><init>(Lcom/google/android/gm/preference/AboutFragment;Ljava/lang/String;)V

    .line 115
    .local v15, openSourceLicenseLinkSpan:Landroid/text/style/URLSpan;
    const v29, 0x7f0c0022

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, openSourceLicenseString:Ljava/lang/String;
    new-instance v12, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    .local v12, licenseSpannable:Landroid/text/Spannable;
    const/16 v29, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v12, v15, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 121
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v29, 0x7f0f000f

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 126
    .local v20, privacyPolicyLinkView:Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 128
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "gmail_privacy_policy_url"

    const-string v31, "http://www.google.com/policies/privacy/"

    invoke-static/range {v29 .. v31}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 131
    .local v25, url:Ljava/lang/String;
    new-instance v18, Landroid/text/style/URLSpan;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 133
    .local v18, privacyPolicyLinkSpan:Landroid/text/style/URLSpan;
    const v29, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, privacyPolicyLinkString:Ljava/lang/String;
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v21, privacySpannable:Landroid/text/Spannable;
    const/16 v29, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x22

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 139
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/AboutFragment;->setHasOptionsMenu(Z)V

    .line 142
    return-object v28

    .line 99
    .end local v12           #licenseSpannable:Landroid/text/Spannable;
    .end local v15           #openSourceLicenseLinkSpan:Landroid/text/style/URLSpan;
    .end local v16           #openSourceLicenseString:Ljava/lang/String;
    .end local v17           #openSourceLicenseView:Landroid/widget/TextView;
    .end local v18           #privacyPolicyLinkSpan:Landroid/text/style/URLSpan;
    .end local v19           #privacyPolicyLinkString:Ljava/lang/String;
    .end local v20           #privacyPolicyLinkView:Landroid/widget/TextView;
    .end local v21           #privacySpannable:Landroid/text/Spannable;
    .end local v25           #url:Ljava/lang/String;
    :cond_1
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    const v29, 0x7f0f000c

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 52
    .end local v7           #copyRightTextView:Landroid/widget/TextView;
    .end local v9           #feebackLinkView:Landroid/widget/TextView;
    .end local v10           #feedback:Landroid/text/Spannable;
    .end local v11           #feedbackString:Ljava/lang/String;
    .end local v14           #movementMethod:Landroid/text/method/MovementMethod;
    .end local v23           #reportProblemLinkView:Landroid/widget/TextView;
    .end local v24           #surveyLinkSpan:Landroid/text/style/URLSpan;
    :catch_0
    move-exception v29

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 148
    return-void
.end method
