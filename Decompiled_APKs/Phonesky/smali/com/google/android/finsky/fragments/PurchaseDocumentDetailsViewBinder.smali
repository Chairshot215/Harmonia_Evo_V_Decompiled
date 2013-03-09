.class public Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;
.super Ljava/lang/Object;
.source "PurchaseDocumentDetailsViewBinder.java"


# instance fields
.field private mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

.field private mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

.field private mContext:Landroid/content/Context;

.field private mDefaultTab:I

.field private final mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/view/View;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mSavedState:Landroid/os/Bundle;

.field private mTabContent:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mDefaultTab:I

    .line 68
    new-instance v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Lcom/google/android/finsky/layout/CustomRadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->requestContentLayout()V

    return-void
.end method

.method private initTab(Landroid/view/LayoutInflater;ILjava/lang/String;Landroid/view/View;I)V
    .locals 6
    .parameter "inflater"
    .parameter "tag"
    .parameter "label"
    .parameter "content"
    .parameter "channelId"

    .prologue
    .line 224
    const v3, 0x7f040033

    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 226
    .local v1, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setId(I)V

    .line 227
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 230
    if-eqz p5, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v3, p5}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 232
    .local v0, foregroundColor:I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 233
    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/CustomRadioGroup;->addView(Landroid/view/View;)V

    .line 236
    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    .line 238
    .local v2, visibility:I
    :goto_1
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 241
    new-instance v3, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;

    invoke-direct {v3, p0, p4, v2, v1}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;-><init>(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;Landroid/view/View;ILandroid/widget/RadioButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    return-void

    .line 230
    .end local v0           #foregroundColor:I
    .end local v2           #visibility:I
    :cond_0
    const v0, 0x7f0a0006

    goto :goto_0

    .line 236
    .restart local v0       #foregroundColor:I
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private requestContentLayout()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/FragmentManager;Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;ILjava/util/List;Z)V
    .locals 36
    .parameter "fragmentManager"
    .parameter "container"
    .parameter "document"
    .parameter "offerType"
    .parameter
    .parameter "isIab"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/view/ViewGroup;",
            "Lcom/google/android/finsky/api/model/Document;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p5, htmlFootnotes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 104
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    .line 106
    .local v7, channelId:I
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;

    .line 107
    const v2, 0x7f0801ba

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/CustomRadioGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    .line 108
    const v2, 0x7f0801bb

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mTabContent:Landroid/widget/FrameLayout;

    .line 112
    const v2, 0x7f0801b9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/HorizontalScrollView;

    .line 114
    .local v34, tabScroller:Landroid/widget/HorizontalScrollView;
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mDefaultTab:I

    move/from16 v20, v0

    .line 117
    .local v20, defaultTab:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getCheckedRadioButtonId()I

    move-result v20

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CustomRadioGroup;->clearCheck()V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CustomRadioGroup;->removeAllViews()V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/CustomRadioGroup;->setBackendId(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 126
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getAppPermissionsList()Ljava/util/List;

    move-result-object v28

    .line 127
    .local v28, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x3

    if-ne v7, v2, :cond_2

    if-eqz p6, :cond_2

    .line 128
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v21

    .line 129
    .local v21, description:Ljava/lang/CharSequence;
    const v2, 0x7f0400dd

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 131
    .local v6, descriptionView:Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v4, 0x2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v5, 0x7f070193

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->initTab(Landroid/view/LayoutInflater;ILjava/lang/String;Landroid/view/View;I)V

    .line 135
    if-gez v20, :cond_1

    .line 136
    const/16 v20, 0x2

    .line 194
    .end local v6           #descriptionView:Landroid/widget/TextView;
    .end local v21           #description:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    if-eqz p5, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 195
    const v2, 0x7f0400db

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 197
    .local v17, footnotesContainer:Landroid/view/ViewGroup;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 198
    .local v22, footnote:Ljava/lang/String;
    const v2, 0x7f040083

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 200
    .local v23, footnoteView:Landroid/view/ViewGroup;
    const v2, 0x7f0800af

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 201
    .local v24, header:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 203
    const v2, 0x7f080013

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 204
    .local v19, content:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 138
    .end local v17           #footnotesContainer:Landroid/view/ViewGroup;
    .end local v19           #content:Landroid/view/View;
    .end local v22           #footnote:Ljava/lang/String;
    .end local v23           #footnoteView:Landroid/view/ViewGroup;
    .end local v24           #header:Landroid/widget/TextView;
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz v28, :cond_4

    .line 141
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v29

    .line 142
    .local v29, pis:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 144
    .local v26, permission:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v27

    .line 146
    .local v27, permissionInfo:Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    .end local v27           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 151
    .end local v26           #permission:Ljava/lang/String;
    :cond_3
    const v2, 0x7f0400cc

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mSavedState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v4, v1, v5}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 156
    const/4 v10, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v4, 0x7f070191

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    move-object/from16 v8, p0

    move-object v9, v3

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->initTab(Landroid/view/LayoutInflater;ILjava/lang/String;Landroid/view/View;I)V

    .line 159
    if-gez v20, :cond_1

    .line 160
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 162
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v29           #pis:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_4
    const/4 v2, 0x4

    if-ne v7, v2, :cond_1

    .line 163
    const v2, 0x7f0400db

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 165
    .local v12, rentalTermsContainer:Landroid/view/ViewGroup;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/16 v4, 0x13

    if-eq v2, v4, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/16 v4, 0x14

    if-eq v2, v4, :cond_1

    .line 168
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 169
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getMovieRentalTerms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 170
    .local v35, term:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferType()I

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_5

    .line 171
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, tabTitle:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    .line 173
    .local v31, subterm:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    const v2, 0x7f040083

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v12, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    .line 175
    .local v30, rentalTerm:Landroid/view/ViewGroup;
    const v2, 0x7f0800af

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 177
    .local v33, subtermHeader:Landroid/widget/TextView;
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    const v2, 0x7f080013

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 180
    .local v32, subtermBody:Landroid/widget/TextView;
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 182
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 184
    .end local v30           #rentalTerm:Landroid/view/ViewGroup;
    .end local v31           #subterm:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .end local v32           #subtermBody:Landroid/widget/TextView;
    .end local v33           #subtermHeader:Landroid/widget/TextView;
    :cond_6
    const/4 v10, 0x3

    move-object/from16 v8, p0

    move-object v9, v3

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->initTab(Landroid/view/LayoutInflater;ILjava/lang/String;Landroid/view/View;I)V

    .line 186
    if-gez v20, :cond_1

    .line 187
    const/16 v20, 0x3

    goto/16 :goto_0

    .line 207
    .end local v11           #tabTitle:Ljava/lang/String;
    .end local v12           #rentalTermsContainer:Landroid/view/ViewGroup;
    .end local v35           #term:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    .restart local v17       #footnotesContainer:Landroid/view/ViewGroup;
    :cond_7
    const/4 v15, 0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v4, 0x7f070192

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, p0

    move-object v14, v3

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->initTab(Landroid/view/LayoutInflater;ILjava/lang/String;Landroid/view/View;I)V

    .line 210
    if-gez v20, :cond_8

    .line 211
    const/16 v20, 0x1

    .line 214
    .end local v17           #footnotesContainer:Landroid/view/ViewGroup;
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/CustomRadioGroup;->setVisibility(I)V

    .line 220
    :goto_4
    return-void

    .line 217
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/CustomRadioGroup;->setVisibility(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->check(I)V

    goto :goto_4
.end method

.method public init(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "packageManager"
    .parameter "savedState"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    iput-object p3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mSavedState:Landroid/os/Bundle;

    .line 84
    if-eqz p3, :cond_0

    const-string v0, "default_tab"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "default_tab"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mDefaultTab:I

    .line 87
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;

    .line 256
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mContext:Landroid/content/Context;

    .line 257
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 258
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    .line 259
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mTabContent:Landroid/widget/FrameLayout;

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "default_tab"

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mAppSecurityPermissions:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->saveInstanceState(Landroid/os/Bundle;)V

    .line 96
    :cond_1
    return-void
.end method
