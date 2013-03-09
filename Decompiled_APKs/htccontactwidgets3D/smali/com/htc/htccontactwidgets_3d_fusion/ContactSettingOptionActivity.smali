.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;
.super Landroid/app/Activity;
.source "ContactSettingOptionActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingOptionActivity"

.field private static final localLOGV:Z

.field public static mstrGroupName:Ljava/lang/String;


# instance fields
.field public hierarchyChangeListerer:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field public mActivity:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

.field private mMemberCount:I

.field private mSettingOptionList:Lcom/htc/widget/HtcListView;

.field private mstrSettingOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrSettingOptions:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mActivity:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mMemberCount:I

    .line 38
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$1;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->hierarchyChangeListerer:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 69
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrSettingOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mMemberCount:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 184
    invoke-virtual {p0, p2, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->finish()V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f080011

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 121
    invoke-virtual {p0, v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->requestWindowFeature(I)Z

    .line 123
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 124
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "group_name"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    .line 126
    const-string v5, "member_count"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mMemberCount:I

    .line 128
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->setRequestedOrientation(I)V

    .line 135
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->setContentView(I)V

    .line 138
    const v5, 0x7f0a000f

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mSettingOptionList:Lcom/htc/widget/HtcListView;

    .line 139
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mSettingOptionList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 140
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mSettingOptionList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8, v8}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 142
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrSettingOptions:[Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "editing_title_label"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 154
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 156
    .end local v3           #title:Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f0a000d

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .end local v1           #id:I
    :cond_1
    :goto_1
    iput-object p0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mActivity:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    .line 177
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mSettingOptionList:Lcom/htc/widget/HtcListView;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x2090007

    iget-object v8, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrSettingOptions:[Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mSettingOptionList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 180
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mSettingOptionList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->hierarchyChangeListerer:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 181
    return-void

    .line 130
    :cond_2
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->hasKeyboard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0, v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 160
    :cond_4
    const v5, 0x7f0a000c

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v5, 0x7f0a000e

    invoke-virtual {p0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 162
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 164
    invoke-virtual {v0, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_app_bkg"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 167
    .local v4, titleid:I
    const-string v5, "common_app_bkg"

    invoke-static {p0, v5, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 168
    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_1
.end method
