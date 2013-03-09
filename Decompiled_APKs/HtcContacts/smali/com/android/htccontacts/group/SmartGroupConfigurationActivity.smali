.class public Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "SmartGroupConfigurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$Frequency;,
        Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;,
        Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;,
        Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_CONFIG_OF_FREQUENT_MEMBERS:I = 0x40

.field static final DEFAULT_NUMBER_OF_FREQUENT_MEMBERS:I = 0x12

.field static final DIALOG_CONFIG_MEMBERS:I = 0x1

.field static final EDIT_TEXT_ID:I = 0xf123456

.field static final ITEM_TYPE_NUMBER:I = 0x0

.field static final ITEM_TYPE_SELECTION:I = 0x1

.field public static final KEY_FREQUENCT_GROUP_CONFIGURATION:Ljava/lang/String; = "frequnecy_group_config"

.field public static final KEY_MAX_FREQUENCT_GROUP_LIST:Ljava/lang/String; = "max_frequnecy_list"

.field static final PREF_KEY_CONFIG_OF_FREQUENT_MEMBERS:Ljava/lang/String; = "CONFIG_OF_FREQUENT_MEMBERS"

.field static final PREF_KEY_NUMBER_OF_FREQUENT_MEMBERS:Ljava/lang/String; = "NUMBER_OF_FREQUENT_MEMBERS"

.field static final TAG:Ljava/lang/String; = "SmartGroupConfigurationActivity"


# instance fields
.field final QueryConfigUri:Landroid/net/Uri;

.field final UpdateConfigUri:Landroid/net/Uri;

.field mBooleanArray:Landroid/util/SparseBooleanArray;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field mConfigNumber:I

.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field mMemberConfig:I

.field private mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mTitleView:Lcom/android/htccontacts/widget/HtcListItemBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mMemberConfig:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mItemList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    .line 65
    const-string v0, "content://com.android.contacts/frequency/config/query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->QueryConfigUri:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.android.contacts/frequency/config/update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->UpdateConfigUri:Landroid/net/Uri;

    .line 67
    iput-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 68
    iput-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mTitleView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 683
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mTitleView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->enableTopBottomRound()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->resetNumberConfigView()V

    return-void
.end method

.method private actionConfigNumber()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->showDialog(I)V

    .line 535
    return-void
.end method

.method private addHeaderView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    new-instance v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;)V

    .line 90
    .local v0, item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    iput v4, v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 91
    const v3, 0x7f0a0323

    iput v3, v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0, p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->createHtclistItemForMore(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 101
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setClickable(Z)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 106
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 109
    .local v1, listView:Lcom/htc/widget/HtcListView;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 110
    return-void
.end method

.method private createConfigNumberDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 538
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 540
    .local v1, editText:Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 541
    const v2, 0xf123456

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 542
    const v2, 0x7f0a0323

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 544
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 545
    const v2, 0x104000a

    new-instance v3, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 562
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private createConfigNumberListViewDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/16 v7, 0x12

    .line 567
    const/16 v0, 0x12

    .line 568
    .local v0, MAX:I
    new-array v5, v7, [Ljava/lang/CharSequence;

    .line 569
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 570
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 569
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 572
    :cond_0
    const/4 v2, 0x0

    .line 573
    .local v2, d:Landroid/app/Dialog;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 576
    .local v3, editText:Landroid/widget/EditText;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 577
    const v6, 0xf123456

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setId(I)V

    .line 578
    const v6, 0x7f0a0323

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 579
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 580
    new-instance v6, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;

    invoke-direct {v6, p0, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$2;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 615
    return-object v2
.end method

.method private enableTopBottomRound()Z
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    const v4, 0x7f0a0020

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->setGenericTitleBar(I)V

    .line 124
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->addHeaderView()V

    .line 126
    invoke-virtual {p0, p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->createHtclistItemForTitle(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mTitleView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 130
    .local v3, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 133
    iget-object v2, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mItemList:Ljava/util/ArrayList;

    .line 134
    .local v2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    new-instance v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .end local v1           #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    invoke-direct {v1, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;)V

    .line 145
    .restart local v1       #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 146
    const v4, 0x7f0a0324

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    .line 147
    iput v6, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .end local v1           #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    invoke-direct {v1, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;)V

    .line 151
    .restart local v1       #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    const v4, 0x7f0a0325

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    .line 152
    iput v6, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 153
    iput v6, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    .line 154
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .end local v1           #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    invoke-direct {v1, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;)V

    .line 157
    .restart local v1       #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    const v4, 0x7f0a0328

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    .line 158
    const/4 v4, 0x4

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 159
    iput v6, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->itemType:I

    .line 160
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->isEnableMessageFrequency()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    new-instance v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .end local v1           #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    invoke-direct {v1, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;)V

    .line 164
    .restart local v1       #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    const v4, 0x7f0a0326

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    .line 165
    iput v7, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 166
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .end local v1           #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    invoke-direct {v1, v5}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$1;)V

    .line 169
    .restart local v1       #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    const v4, 0x7f0a0329

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->textId:I

    .line 170
    const/4 v4, 0x5

    iput v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 171
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    new-instance v0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v5, 0x209004e

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;-><init>(Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 191
    .local v0, adapter:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$SmartGroupConfigurationAdapter;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    return-void
.end method

.method private static final isEnableMessageFrequency()Z
    .locals 2

    .prologue
    .line 700
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadConfig()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 426
    const/4 v6, 0x0

    .line 427
    .local v6, config:I
    const/4 v8, 0x0

    .line 428
    .local v8, maxConfig:I
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->QueryConfigUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 430
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 432
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 434
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 437
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 438
    const/4 v7, 0x0

    .line 442
    :cond_1
    const/16 v1, 0x12

    if-gt v8, v1, :cond_2

    if-gtz v8, :cond_3

    .line 443
    :cond_2
    const/16 v8, 0x12

    .line 445
    :cond_3
    if-gtz v6, :cond_4

    .line 446
    const/16 v6, 0x40

    .line 448
    :cond_4
    iput v8, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 449
    iput v6, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mMemberConfig:I

    .line 450
    return-void

    .line 437
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 438
    const/4 v7, 0x0

    .line 437
    throw v1
.end method

.method private loadPreference()V
    .locals 6

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->loadConfig()V

    .line 466
    iget v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mMemberConfig:I

    .line 467
    .local v3, temp:I
    const/4 v1, 0x1

    .line 468
    .local v1, mask:I
    const/4 v2, 0x0

    .line 469
    .local v2, result:I
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 470
    and-int/lit8 v2, v3, 0x1

    .line 471
    if-lez v2, :cond_0

    .line 472
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 477
    :goto_1
    shr-int/lit8 v3, v3, 0x1

    .line 469
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->resetNumberConfigView()V

    .line 480
    return-void
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 526
    .local v0, application:Landroid/app/Application;
    instance-of v2, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 527
    check-cast v1, Lcom/android/htccontacts/PeopleApp;

    .line 528
    .local v1, people:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v1}, Lcom/android/htccontacts/PeopleApp;->notifyFrequencyConfigChange()V

    .line 530
    .end local v1           #people:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method

.method private recheckChecked()Z
    .locals 4

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 674
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 675
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    const/4 v1, 0x1

    .line 680
    :cond_0
    return v1

    .line 674
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetNumberConfigView()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mNumberConfigView:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 119
    :cond_0
    return-void
.end method

.method private saveConfig()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    .line 483
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 484
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "max_frequnecy_list"

    iget v6, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, config:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 488
    iget-object v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 489
    .local v1, enabled:Z
    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v0, v5

    .line 490
    if-ge v2, v7, :cond_0

    .line 491
    shl-int/lit8 v0, v0, 0x1

    .line 487
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 494
    .end local v1           #enabled:Z
    :cond_2
    const-string v5, "frequnecy_group_config"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 496
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->UpdateConfigUri:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 497
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->notifyChange()V

    .line 498
    return-void
.end method

.method private savePreference()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    .line 501
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 502
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 503
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    if-lez v5, :cond_0

    .line 504
    const-string v5, "NUMBER_OF_FREQUENT_MEMBERS"

    iget v6, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 507
    :cond_0
    const-string v5, "NUMBER_OF_FREQUENT_MEMBERS"

    const/16 v6, 0x12

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mConfigNumber:I

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, config:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-gt v3, v7, :cond_3

    .line 511
    iget-object v5, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 512
    .local v2, enabled:Z
    if-eqz v2, :cond_2

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v0, v5

    .line 513
    if-ge v3, v7, :cond_1

    .line 514
    shl-int/lit8 v0, v0, 0x1

    .line 510
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 517
    .end local v2           #enabled:Z
    :cond_3
    const-string v5, "CONFIG_OF_FREQUENT_MEMBERS"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->notifyChange()V

    .line 522
    return-void
.end method


# virtual methods
.method protected createHtclistItemForMore(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 4
    .parameter "context"

    .prologue
    .line 278
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v2, 0x65

    invoke-direct {v1, p1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 280
    .local v1, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    .line 281
    .local v0, imageButton:Lcom/htc/widget/HtcListItemImageButton;
    const v2, 0x20804a9

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 282
    const/4 v2, 0x0

    const v3, 0x7f0a0323

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 283
    return-object v1
.end method

.method protected createHtclistItemForSelection(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"

    .prologue
    .line 287
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x67

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 289
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 290
    return-object v0
.end method

.method protected createHtclistItemForTitle(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"

    .prologue
    .line 294
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 297
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v1, 0x0

    const v2, 0x7f0a0324

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 298
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(ILjava/lang/CharSequence;)V

    .line 300
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->saveConfig()V

    .line 661
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->setResult(I)V

    .line 662
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->finish()V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_0

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->setResult(I)V

    .line 666
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f030072

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->setContentView(I)V

    .line 74
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 75
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 76
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 78
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->initUI()V

    .line 83
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->loadPreference()V

    .line 85
    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->recheckChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 86
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, d:Landroid/app/Dialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->createConfigNumberListViewDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 259
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 207
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/app/BaseListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    if-gtz p3, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->actionConfigNumber()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mItemList:Ljava/util/ArrayList;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    check-cast v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;

    .line 214
    .restart local v1       #item:Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;
    iget v2, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    .line 216
    .local v2, kind:I
    if-nez v2, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->actionConfigNumber()V

    goto :goto_0

    .line 219
    :cond_2
    if-lez v2, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget v4, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 221
    .local v0, checked:Z
    iget-object v4, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget v5, v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItem;->actionKind:I

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 222
    iget-object v3, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;->recheckChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 274
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 242
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 248
    return-void
.end method
