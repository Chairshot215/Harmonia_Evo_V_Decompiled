.class public final Lcom/htc/sdcardwizard/SDCardWizardActivity;
.super Lcom/htc/sdcardwizard/WaitingDialogActivity;
.source "SDCardWizardActivity.java"

# interfaces
.implements Lcom/htc/sdcardwizard/UpdateListener;
.implements Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;,
        Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;,
        Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private CALLER_INTENT_ACTION:Ljava/lang/String;

.field private CALLER_INTENT_BUNDLE:Landroid/os/Bundle;

.field private adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

.field private categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

.field private final headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

.field private mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

.field private needToUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LSCW/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/sdcardwizard/SDCardWizardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    invoke-direct {v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->needToUpdate:Z

    .line 279
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sdcardwizard/SDCardWizardActivity;)Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sdcardwizard/SDCardWizardActivity;)Lcom/htc/sdcardwizard/CategoryItemsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sdcardwizard/SDCardWizardActivity;)Lcom/htc/sdcardwizard/CategoryItems;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

    return-object v0
.end method

.method private addHeaderItem(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;Lcom/htc/sdcardwizard/CategoryItem;)V
    .locals 4
    .parameter "listView"
    .parameter "inflater"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 161
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/htc/widget/HtcListItemSeparableType;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1, v0, p3, v3}, Lcom/htc/widget/HtcListView;->addHeaderViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 165
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    new-instance v2, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;

    new-instance v3, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;

    invoke-direct {v3, v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;-><init>(Landroid/view/View;)V

    invoke-direct {v2, v3, p3}, Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;-><init>(Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItemHolder;Lcom/htc/sdcardwizard/CategoryItem;)V

    invoke-virtual {v1, v2}, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->addItem(Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;)V

    .line 166
    return-void
.end method

.method private addHeaderTitle(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;I)V
    .locals 4
    .parameter "listView"
    .parameter "inflater"
    .parameter "resourceId"

    .prologue
    const/4 v3, 0x0

    .line 152
    const v2, 0x2090026

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, title:Landroid/view/View;
    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/htc/widget/HtcListView;->addHeaderViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 157
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->addItem(Lcom/htc/sdcardwizard/SDCardWizardActivity$HeaderItem;)V

    .line 158
    return-void
.end method

.method private setHeader(Lcom/htc/widget/HtcListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040002

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->addHeaderTitle(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;I)V

    .line 141
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/CategoryItems;->getTempFilesItem()Lcom/htc/sdcardwizard/CategoryItem;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->addHeaderItem(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;Lcom/htc/sdcardwizard/CategoryItem;)V

    .line 143
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/CategoryItems;->getApplicationsItem()Lcom/htc/sdcardwizard/CategoryItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    const v1, 0x7f040004

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->addHeaderTitle(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;I)V

    .line 145
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/CategoryItems;->getApplicationsItem()Lcom/htc/sdcardwizard/CategoryItem;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->addHeaderItem(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;Lcom/htc/sdcardwizard/CategoryItem;)V

    .line 148
    :cond_0
    const v1, 0x7f040006

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->addHeaderTitle(Lcom/htc/widget/HtcListView;Landroid/view/LayoutInflater;I)V

    .line 149
    return-void
.end method

.method private setListView(Z)V
    .locals 5
    .parameter "isExternalStorage"

    .prologue
    const v4, 0x7f06000c

    .line 107
    const v0, 0x7f06000c

    .line 108
    .local v0, listResourceId:I
    invoke-virtual {p0, v4}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 110
    .local v1, listView:Lcom/htc/widget/HtcListView;
    new-instance v2, Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

    invoke-virtual {v3, p0, p1}, Lcom/htc/sdcardwizard/CategoryItems;->getContentItems(Landroid/app/Activity;Z)Lcom/htc/sdcardwizard/CategoryList;

    move-result-object v3

    invoke-direct {v2, p0, v4, v3}, Lcom/htc/sdcardwizard/CategoryItemsAdapter;-><init>(Landroid/app/Activity;ILcom/htc/sdcardwizard/CategoryList;)V

    iput-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    .line 112
    new-instance v2, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity$1;-><init>(Lcom/htc/sdcardwizard/SDCardWizardActivity;Lcom/htc/widget/HtcListView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 133
    invoke-direct {p0, v1}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->setHeader(Lcom/htc/widget/HtcListView;)V

    .line 134
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    return-void
.end method

.method private updateListItems(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 178
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateListItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->setNotifyOnChange(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->isWaitingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->showWaitingDialog(I)V

    .line 187
    :cond_0
    new-instance v0, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;-><init>(Lcom/htc/sdcardwizard/SDCardWizardActivity;Z)V

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity$2;->start()V

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "position"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 208
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-boolean v3, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->needToUpdate:Z

    .line 211
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 213
    invoke-direct {p0, v3}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->updateListItems(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 223
    sget-object v2, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v3, "onBackPressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->CALLER_INTENT_ACTION:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->CALLER_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, callerIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->CALLER_INTENT_BUNDLE:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->CALLER_INTENT_BUNDLE:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0           #callerIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onBackPressed()V

    .line 236
    return-void

    .line 231
    .restart local v0       #callerIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 47
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "CALLER_INTENT_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->CALLER_INTENT_ACTION:Ljava/lang/String;

    .line 48
    const-string v4, "CALLER_INTENT_BUNDLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->CALLER_INTENT_BUNDLE:Landroid/os/Bundle;

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, isExternalStorage:Z
    invoke-static {v3}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->setStoragePath(Z)V

    .line 55
    const v4, 0x7f06000b

    invoke-virtual {p0, v4}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarShort;

    .line 56
    .local v0, headerBar:Lcom/htc/widget/HeaderBarShort;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarShort;->enableSecondBackground(Z)V

    .line 57
    new-instance v1, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, headerText:Lcom/htc/widget/HeaderBarText;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 59
    const v4, 0x7f040001

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarShort;->addLeftView(Landroid/view/View;)V

    .line 62
    new-instance v4, Lcom/htc/sdcardwizard/CategoryItems;

    invoke-direct {v4, p0}, Lcom/htc/sdcardwizard/CategoryItems;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->categoryItems:Lcom/htc/sdcardwizard/CategoryItems;

    .line 64
    invoke-direct {p0, v3}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->setListView(Z)V

    .line 65
    new-instance v4, Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-direct {v4, p0, p0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;-><init>(Landroid/content/Context;Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;)V

    iput-object v4, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    .line 66
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onPause()V

    .line 78
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v1, "unregister MounSdCardReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;->unregisterReceiver()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onResume()V

    .line 71
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v1, "register MounSdCardReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;->registerReceiver()V

    .line 73
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->needToUpdate:Z

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->updateListItems(Z)V

    .line 91
    :goto_0
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onStart()V

    .line 92
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->needToUpdate:Z

    goto :goto_0
.end method

.method public onUnMount(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 96
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->isWaitingDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->needToUpdate:Z

    .line 99
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->showWaitingDialog(I)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->updateListItems(Z)V

    goto :goto_0
.end method

.method public onUpdateComplete()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->adapter:Lcom/htc/sdcardwizard/CategoryItemsAdapter;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->notifyDataSetChanged()V

    .line 173
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardWizardActivity;->headerAdapter:Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sdcardwizard/SDCardWizardActivity$ListHeaderAdapter;->update(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardWizardActivity;->dismissWaitingDialog()V

    .line 175
    return-void
.end method
