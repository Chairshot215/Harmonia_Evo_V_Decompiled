.class public Lcom/android/updater/ui/AcuDetailActivity;
.super Landroid/app/Activity;
.source "AcuDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;,
        Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final ACU_VAR_EMPTY:Ljava/lang/String; = "empty"

.field private static final ACU_VAR_V:Ljava/lang/String; = " v"

.field public static final KB_SPACE:I = 0x400

.field private static final LOG:Z = false

.field public static final MB_SPACE:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | AcuDetailActivity"

.field private static final mDefaultAppIcon:I = 0x1080093


# instance fields
.field private mApkDetailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDetailListView:Lcom/htc/widget/HtcListView;

.field private mIntent:Landroid/content/Intent;

.field private mItemsAdapter:Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;

.field private mKB:Ljava/lang/String;

.field private mMB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mDetailListView:Lcom/htc/widget/HtcListView;

    .line 42
    iput-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mItemsAdapter:Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mApkDetailList:Ljava/util/ArrayList;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/AcuDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mApkDetailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mMB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mKB:Ljava/lang/String;

    return-object v0
.end method

.method private initHeaderBar()V
    .locals 2

    .prologue
    .line 87
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 88
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, acuConfirmIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/updater/ui/AcuDetailActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuDetailActivity;->finish()V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuDetailActivity;->requestWindowFeature(I)Z

    .line 57
    :try_start_0
    const-string v2, "common_app_bkg"

    const v3, 0x20806b7

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, bgId:I
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0           #bgId:I
    :goto_0
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuDetailActivity;->setContentView(I)V

    .line 69
    iput-object p0, p0, Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;

    .line 72
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mDetailListView:Lcom/htc/widget/HtcListView;

    .line 74
    invoke-direct {p0}, Lcom/android/updater/ui/AcuDetailActivity;->initHeaderBar()V

    .line 76
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mIntent:Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "apkDetailList"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mApkDetailList:Ljava/util/ArrayList;

    .line 78
    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mMB:Ljava/lang/String;

    .line 79
    const v2, 0x7f060063

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mKB:Ljava/lang/String;

    .line 81
    new-instance v2, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;

    invoke-direct {v2, p0}, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;-><init>(Lcom/android/updater/ui/AcuDetailActivity;)V

    iput-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mItemsAdapter:Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;

    .line 82
    iget-object v2, p0, Lcom/android/updater/ui/AcuDetailActivity;->mDetailListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/updater/ui/AcuDetailActivity;->mItemsAdapter:Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "UpdaterAPK | AcuDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get drawable error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    return-void
.end method
