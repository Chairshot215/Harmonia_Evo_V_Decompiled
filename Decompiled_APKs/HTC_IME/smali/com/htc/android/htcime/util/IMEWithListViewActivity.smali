.class public abstract Lcom/htc/android/htcime/util/IMEWithListViewActivity;
.super Lcom/htc/android/htcime/util/IMEWithListViewBase;
.source "IMEWithListViewActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final MODE_MULTIDEL:I = 0x2

.field protected static final MODE_NORMAL:I = 0x1

.field private static sWhoReceiveSearchREQ:Ljava/lang/String;


# instance fields
.field private final Action_Delete:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final WhoAmI:Ljava/lang/String;

.field protected currMode:I

.field mAdapter:Landroid/widget/BaseAdapter;

.field protected mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHomePressedFilter:Landroid/content/IntentFilter;

.field private mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

.field mListView:Lcom/htc/widget/HtcListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->sWhoReceiveSearchREQ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "com.htc.android.htcime.util.IMEWithListViewActivity.DeleteMode"

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->Action_Delete:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 51
    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->currMode:I

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->WhoAmI:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->sWhoReceiveSearchREQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->sWhoReceiveSearchREQ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->WhoAmI:Ljava/lang/String;

    return-object v0
.end method

.method private receiverRegister()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->receiverRegisterHome()V

    .line 250
    return-void
.end method

.method private receiverRegisterHome()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedFilter:Landroid/content/IntentFilter;

    .line 222
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity$5;-><init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegisterHome()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected abstract ItemClick(Landroid/view/View;Landroid/view/View;IJ)V
.end method

.method protected MultiDelMode()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "com.htc.android.htcime.util.IMEWithListViewActivity.DeleteMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method protected abstract addNewAction()V
.end method

.method protected abstract createAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected abstract deleteItemClick(Landroid/view/View;Landroid/view/View;IJ)V
.end method

.method protected abstract leftCmdBtnAction()V
.end method

.method protected normalMode()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->finish()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.android.htcime.util.IMEWithListViewActivity.DeleteMode"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setHeaderBarMultiDelVisibility(I)V

    .line 63
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setHeaderBarVisibility(I)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setCmdBarVisibility(I)V

    .line 65
    iput-boolean v3, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->bNeedMenuItem:Z

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->currMode:I

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->hideHeaderBarDropdown()V

    .line 71
    invoke-static {v5}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    new-instance v2, Lcom/htc/android/htcime/util/IMEWithListViewActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity$1;-><init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setHeaderBarRightButton(ILandroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x20c01fc

    new-instance v2, Lcom/htc/android/htcime/util/IMEWithListViewActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity$2;-><init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setLeftCmdBarBtn(ILandroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x20c013d

    new-instance v2, Lcom/htc/android/htcime/util/IMEWithListViewActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity$3;-><init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->setRightCmdBarBtn(ILandroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f0e0038

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 98
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 100
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 101
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->createAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 103
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;-><init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mDeleteList:Ljava/util/ArrayList;

    .line 117
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 121
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v2, 0x4060

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 126
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 290
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->currMode:I

    if-ne v0, v1, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->initEditWindowMenu(Landroid/view/Menu;)V

    .line 294
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->receiverUnRegisterHome()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onDestroy()V

    .line 280
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPause] unregisterReceiver()!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 150
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    iget v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->currMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->normalMode()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->finish()V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->finish()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 179
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->MultiDelMode()V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->addNewAction()V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 195
    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 196
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 201
    :cond_1
    :goto_0
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_2

    .line 203
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 198
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 258
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onSearchRequested]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v3, v2}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 261
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->WhoAmI:Ljava/lang/String;

    sput-object v0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->sWhoReceiveSearchREQ:Ljava/lang/String;

    .line 263
    return v2
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onStart()V

    .line 269
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->receiverRegister()V

    .line 270
    return-void
.end method

.method protected abstract rightCmdBtnAction()V
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 284
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method
