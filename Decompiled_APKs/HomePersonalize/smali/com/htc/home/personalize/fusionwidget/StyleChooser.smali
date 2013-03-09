.class public Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.super Landroid/app/Activity;
.source "StyleChooser.java"

# interfaces
.implements Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;,
        Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;,
        Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;,
        Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;,
        Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    }
.end annotation


# static fields
.field private static final DIALOG_DETAILSVIEW:I = 0x4e81d

.field public static final EXTRA_KEY_PREFIX:Ljava/lang/String; = "com.htc.launcher.intent"

.field public static final EXTRA_KEY_PROVIDER_NAME:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

.field public static final EXTRA_KEY_STYLE_ID:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_STYLE_ID"

.field public static final EXTRA_KEY_STYLE_NAME:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

.field public static final EXTRA_KEY_WIDGET_PROVIDER_ARRAY:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

.field public static final EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_FILTER:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_FILTER"

.field public static final EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_SELECT:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_SELECT"

.field private static final IMAGE_ID:I = 0x7f869

.field private static final KEY_BACKUP_DATA_PROVIDER_NAME:Ljava/lang/String; = "backup_provider_name"

.field private static final KEY_BACKUP_DATA_STYLE_ID:Ljava/lang/String; = "backup_style_id"

.field private static final KEY_BACKUP_DATA_STYLE_NAME:Ljava/lang/String; = "backup_style_name"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final REQUEST_SETTINGS:I = 0xc8

.field private static final localLOGV:Z

.field static pm:Landroid/content/pm/PackageManager;

.field private static sSettingsIntent:Landroid/content/Intent;


# instance fields
.field indexFilter:[I

.field private mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupStyleBundleData:Landroid/os/Bundle;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentPosition:I

.field private mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mImageNext:Landroid/widget/ImageView;

.field private mImagePrev:Landroid/widget/ImageView;

.field private mPendingItemType:I

.field mProviders:[Landroid/os/Parcelable;

.field private mSelectedStyle:I

.field mStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private final onItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBackupStyleBundleData:Landroid/os/Bundle;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mCurrentPosition:I

    .line 109
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 110
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 313
    new-instance v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$1;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)V

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->onItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    .line 431
    new-instance v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$4;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$4;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)V

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 490
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    .line 837
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/home/personalize/fusionwidget/StyleChooser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/fusionwidget/StyleChooser;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->updateTitle(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/fusionwidget/StyleChooser;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->choose(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->onLoadStyleComplete(Ljava/util/List;)V

    return-void
.end method

.method private choose(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    .line 888
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    if-nez v7, :cond_1

    .line 889
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v8, "the mStyles == null, it is a error case, we toast and return it."

    invoke-static {v7, v8}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string v7, "the styles loading fail, please wait a moment and try again"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 895
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v8, "the style size is <=0 it is a error case, we toast and return it."

    invoke-static {v7, v8}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v7, "the styles loading fail, please wait a moment and try again"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 900
    :cond_2
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, p1, :cond_4

    .line 901
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v8, "index larger than the size IndexOutOfBoundsException will happen, we handle it."

    invoke-static {v7, v8}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 p1, v7, -0x1

    .line 908
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 909
    .local v3, s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    iput p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    .line 910
    iget v7, v3, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    if-ne v7, v9, :cond_7

    .line 911
    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getSettings()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_5

    .line 912
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 913
    .local v0, data:Landroid/content/Intent;
    invoke-direct {p0, v0, v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->fillResultData(Landroid/content/Intent;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v10, v7}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setResult(ILandroid/content/Intent;)V

    .line 914
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->finish()V

    goto :goto_0

    .line 903
    .end local v0           #data:Landroid/content/Intent;
    .end local v3           #s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    :cond_4
    if-gez p1, :cond_3

    .line 904
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v8, "index smaller than the size IndexOutOfBoundsException will happen, we handle it."

    invoke-static {v7, v8}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 p1, 0x0

    goto :goto_1

    .line 917
    .restart local v3       #s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    :cond_5
    iget-object v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->indexFilter:[I

    if-eqz v7, :cond_6

    .line 918
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "choose with indexFilter position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 920
    .restart local v0       #data:Landroid/content/Intent;
    const-string v7, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_SELECT"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    const-string v7, "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 922
    const-string v7, "com.htc.launcher.intent.EXTRA_KEY_STYLE_ID"

    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    invoke-virtual {p0, v10, v0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setResult(ILandroid/content/Intent;)V

    .line 924
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->finish()V

    goto/16 :goto_0

    .line 928
    .end local v0           #data:Landroid/content/Intent;
    :cond_6
    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getSettings()Landroid/content/ComponentName;

    move-result-object v5

    .line 929
    .local v5, settingsComponentName:Landroid/content/ComponentName;
    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleSceneName()Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, settingStyleName:Ljava/lang/String;
    invoke-direct {p0, v5, v4}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->startActivityForResultForWidgetSetting(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 932
    .end local v4           #settingStyleName:Ljava/lang/String;
    .end local v5           #settingsComponentName:Landroid/content/ComponentName;
    :cond_7
    iget v7, v3, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    if-nez v7, :cond_0

    .line 933
    const/4 v6, 0x0

    .line 935
    .local v6, waitForActivityResult:Z
    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getParentId()I

    move-result v7

    if-eq v10, v7, :cond_8

    .line 938
    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getId()I

    move-result v7

    iput v7, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mPendingItemType:I

    .line 939
    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->loadWidgetClass(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    move-result-object v2

    .line 941
    .local v2, mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    if-eqz v2, :cond_8

    .line 942
    iget-object v7, v2, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;

    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleIndex()I

    move-result v8

    invoke-interface {v7, v8, p0}, Lcom/htc/home/WidgetGroupItemInterface;->onSelectedAt(ILandroid/app/Activity;)Z

    move-result v6

    .line 946
    .end local v2           #mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    :cond_8
    if-nez v6, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 948
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "widget_2d"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    const-string v7, "item_type"

    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getId()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v7, "waitForActivityResult"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v10, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setResult(ILandroid/content/Intent;)V

    .line 952
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->finish()V

    goto/16 :goto_0
.end method

.method private fillResultBundleData(Landroid/os/Bundle;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/os/Bundle;
    .locals 4
    .parameter "result"
    .parameter "s"

    .prologue
    .line 656
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    if-nez v1, :cond_0

    .line 657
    invoke-virtual {p2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->getProviderByStyleName(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 658
    .local v0, provider:Landroid/content/ComponentName;
    const-string v1, "backup_provider_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 662
    .end local v0           #provider:Landroid/content/ComponentName;
    :goto_0
    const-string v1, "backup_style_name"

    invoke-virtual {p2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 663
    const-string v1, "backup_style_id"

    invoke-virtual {p2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-object p1

    .line 660
    :cond_0
    const-string v2, "backup_provider_name"

    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private fillResultData(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter "result"
    .parameter "s"

    .prologue
    .line 649
    const-string v0, "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

    const-string v1, "backup_provider_name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 650
    const-string v0, "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

    const-string v1, "backup_style_name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 651
    const-string v0, "com.htc.launcher.intent.EXTRA_KEY_STYLE_ID"

    const-string v1, "backup_style_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    return-object p1
.end method

.method private fillResultData(Landroid/content/Intent;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/content/Intent;
    .locals 4
    .parameter "result"
    .parameter "s"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    if-nez v1, :cond_0

    .line 638
    invoke-virtual {p2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->getProviderByStyleName(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 639
    .local v0, provider:Landroid/content/ComponentName;
    const-string v1, "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 643
    .end local v0           #provider:Landroid/content/ComponentName;
    :goto_0
    const-string v1, "com.htc.launcher.intent.EXTRA_KEY_STYLE_NAME"

    invoke-virtual {p2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 644
    const-string v1, "com.htc.launcher.intent.EXTRA_KEY_STYLE_ID"

    invoke-virtual {p2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    return-object p1

    .line 641
    :cond_0
    const-string v2, "com.htc.launcher.intent.EXTRA_KEY_PROVIDER_NAME"

    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchHomeWithAddToHome(ILandroid/content/Intent;)V
    .locals 4
    .parameter "request"
    .parameter "data"

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, category:Ljava/lang/String;
    const-string v3, "uimode"

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 617
    .local v2, uiModeMgr:Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 625
    const-string v0, "android.intent.category.HOME"

    .line 628
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    const-string v3, "pick_item_type"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const-string v3, "pick_item_data"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->startActivity(Landroid/content/Intent;)V

    .line 634
    return-void

    .line 619
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 620
    goto :goto_0

    .line 622
    :pswitch_1
    const-string v0, "android.intent.category.DESK_DOCK"

    .line 623
    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadWidgetClass(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .locals 11
    .parameter "packageName"
    .parameter "pluginClassname"

    .prologue
    const/4 v8, 0x0

    .line 960
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, p1, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 963
    .local v6, pluginContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 964
    .local v5, pClassLoader:Ljava/lang/ClassLoader;
    const/4 v7, 0x1

    invoke-static {p2, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 966
    .local v0, clazz:Ljava/lang/Class;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 967
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 968
    .local v4, object:Ljava/lang/Object;
    instance-of v7, v4, Lcom/htc/home/WidgetGroupItemInterface;

    if-eqz v7, :cond_0

    .line 969
    new-instance v3, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    invoke-direct {v3}, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;-><init>()V

    .line 970
    .local v3, item:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    iput-object p1, v3, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mPackageName:Ljava/lang/String;

    .line 971
    check-cast v4, Lcom/htc/home/WidgetGroupItemInterface;

    .end local v4           #object:Ljava/lang/Object;
    iput-object v4, v3, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 983
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    .end local v3           #item:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .end local v5           #pClassLoader:Ljava/lang/ClassLoader;
    .end local v6           #pluginContext:Landroid/content/Context;
    :goto_0
    return-object v3

    .line 974
    :catch_0
    move-exception v2

    .line 975
    .local v2, e:Ljava/lang/ClassNotFoundException;
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget Plugin Class not found - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    move-object v3, v8

    .line 983
    goto :goto_0

    .line 976
    :catch_1
    move-exception v2

    .line 977
    .local v2, e:Ljava/lang/NoSuchMethodException;
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Widget Plugin Class doesn\'t have default constructor."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 980
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 981
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onLoadStyleComplete(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    const/4 v2, 0x0

    .line 478
    sget-object v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoadStyleComplete() +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz p1, :cond_0

    .line 481
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    .line 482
    new-instance v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    invoke-direct {v0, p0, v2, v2, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    .line 483
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 486
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLoadStyleComplete() -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method private startActivityForResultForWidgetSetting(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .parameter "settingsComponentName"
    .parameter "settingStyleName"

    .prologue
    .line 509
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, settingsIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 514
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 515
    const-string v2, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :cond_0
    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "startActivityForResultForWidgetSetting with unknown activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateTitle(I)V
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 526
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    if-nez v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 529
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_2

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSubTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImagePrev:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 538
    .local v0, tmp:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSubTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    if-nez p1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImagePrev:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImagePrev:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 550
    :cond_4
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public collect2DWidgetInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->collectWidgetInfo(Landroid/content/Context;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v6, 0x1f4

    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 556
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 604
    :goto_0
    return-void

    .line 559
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 603
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 561
    :pswitch_0
    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    iget v3, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 563
    .local v1, s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    sget-object v2, Lcom/htc/home/personalize/PersonalizeMain;->mRefPersonalize:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/home/personalize/PersonalizeMain;->mRefPersonalize:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 566
    invoke-direct {p0, p3, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->fillResultData(Landroid/content/Intent;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setResult(ILandroid/content/Intent;)V

    .line 599
    .end local v1           #s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    :goto_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->finish()V

    goto :goto_1

    .line 573
    .restart local v1       #s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    :cond_1
    sget-object v2, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "PersonalizeMain is not started"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0, p3, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->fillResultData(Landroid/content/Intent;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/content/Intent;

    move-result-object p3

    .line 576
    const-string v2, "widget_2d"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 577
    .local v0, bIs2DWidget:Z
    if-eqz v0, :cond_2

    .line 578
    invoke-direct {p0, v6, p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_2

    .line 580
    :cond_2
    invoke-direct {p0, v5, p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_2

    .line 583
    .end local v0           #bIs2DWidget:Z
    .end local v1           #s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBackupStyleBundleData:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBackupStyleBundleData:Landroid/os/Bundle;

    const-string v3, "backup_style_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 587
    sget-object v2, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mStyles is null , using mBackupStyleBundleData"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBackupStyleBundleData:Landroid/os/Bundle;

    invoke-direct {p0, p3, v2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->fillResultData(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    .line 590
    const-string v2, "widget_2d"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 591
    .restart local v0       #bIs2DWidget:Z
    if-eqz v0, :cond_4

    .line 592
    invoke-direct {p0, v6, p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_2

    .line 594
    :cond_4
    invoke-direct {p0, v5, p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_2

    .line 597
    .end local v0           #bIs2DWidget:Z
    :cond_5
    sget-object v2, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mStyles is null , please check ,again"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f080006

    const/4 v13, 0x0

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 338
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;

    .line 339
    .local v7, ncInstance:Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;
    if-eqz p1, :cond_0

    const-string v10, "backup_style_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 340
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBackupStyleBundleData:Landroid/os/Bundle;

    .line 343
    :cond_0
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->requestWindowFeature(I)Z

    .line 344
    const v10, 0x7f030022

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setContentView(I)V

    .line 345
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setupHeaderFooter()V

    .line 347
    const v10, 0x7f0b0064

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mTitle:Landroid/widget/TextView;

    .line 348
    const v10, 0x7f0b0067

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSubTitle:Landroid/widget/TextView;

    .line 349
    const v10, 0x7f0b0066

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImagePrev:Landroid/widget/ImageView;

    .line 350
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImagePrev:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 352
    const v10, 0x7f0b0068

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImageNext:Landroid/widget/ImageView;

    .line 353
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mImageNext:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 356
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setProgressBarIndeterminateVisibility(Z)V

    .line 358
    const v10, 0x7f0b0062

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/home/personalize/widget/HtcFilmstripView;

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    .line 359
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v10, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setOnItemClickListener(Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemClickListener;)V

    .line 360
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    iget-object v11, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->onItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    invoke-virtual {v10, v11}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setOnItemSelectedListener(Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;)V

    .line 361
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v10, v13, v13, v13, v13}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setPadding(IIII)V

    .line 362
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070031

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSpacing(I)V

    .line 363
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v10, v13}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setFadingEdgeLength(I)V

    .line 364
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/high16 v11, 0x437f

    invoke-virtual {v10, v11}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    .line 365
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v10, v13}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setVerticalScrollBarEnabled(Z)V

    .line 367
    invoke-virtual {p0, v13}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setProgressBarIndeterminateVisibility(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    .line 370
    sget-object v11, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate(): "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    aget-object v10, v10, v13

    check-cast v10, Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_FILTER"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->indexFilter:[I

    .line 373
    if-eqz v7, :cond_3

    .line 375
    invoke-virtual {v7}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->getStyles()Ljava/util/List;

    move-result-object v9

    .line 376
    .local v9, styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    invoke-direct {p0, v9}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->onLoadStyleComplete(Ljava/util/List;)V

    .line 378
    invoke-virtual {v7}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->getPosition()I

    move-result v8

    .line 379
    .local v8, position:I
    const/4 v10, -0x1

    if-eq v10, v8, :cond_1

    .line 380
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v10, v8}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSelection(I)V

    .line 383
    :cond_1
    invoke-virtual {v7}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;->getSelectedStyle()I

    move-result v10

    iput v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    .line 391
    .end local v8           #position:I
    .end local v9           #styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    :goto_1
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    new-instance v11, Lcom/htc/home/personalize/fusionwidget/StyleChooser$2;

    invoke-direct {v11, p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$2;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f090043

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 399
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->indexFilter:[I

    if-eqz v10, :cond_4

    .line 400
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 411
    :goto_2
    const-string v10, "common_app_bkg"

    const v11, 0x20806b7

    invoke-static {p0, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 412
    .local v0, background:I
    const v10, 0x7f0b0022

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 413
    .local v2, footerBackground:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 416
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x205017a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 417
    .local v3, footerHeight:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 418
    .local v6, matrix:Landroid/graphics/Matrix;
    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v11

    sub-int/2addr v11, v3

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 419
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 421
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v10, "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v4}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    return-void

    .line 370
    .end local v0           #background:I
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #footerBackground:Landroid/widget/ImageView;
    .end local v3           #footerHeight:I
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    .end local v6           #matrix:Landroid/graphics/Matrix;
    :cond_2
    const-string v10, "all fx widgets"

    goto/16 :goto_0

    .line 387
    :cond_3
    new-instance v5, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;

    invoke-direct {v5, p0, p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Landroid/content/Context;)V

    .line 388
    .local v5, loader:Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    invoke-virtual {v5, v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 402
    .end local v5           #loader:Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;
    :cond_4
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    new-instance v11, Lcom/htc/home/personalize/fusionwidget/StyleChooser$3;

    invoke-direct {v11, p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$3;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f090002

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 408
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 994
    const v0, 0x4e81d

    if-eq v0, p1, :cond_0

    .line 995
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    .line 1006
    :goto_0
    return-object v6

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 998
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030021

    invoke-virtual {v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1000
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090002

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v3, 0x20c0130

    invoke-virtual {v0, v3, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 1006
    .local v6, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 451
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, group:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 494
    .local v1, s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    iput p3, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    .line 495
    invoke-virtual {v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getSettings()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 497
    .local v0, data:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->fillResultData(Landroid/content/Intent;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->setResult(ILandroid/content/Intent;)V

    .line 498
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->finish()V

    .line 506
    .end local v0           #data:Landroid/content/Intent;
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-virtual {v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getSettings()Landroid/content/ComponentName;

    move-result-object v3

    .line 503
    .local v3, settingsComponentName:Landroid/content/ComponentName;
    invoke-virtual {v1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleSceneName()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, settingStyleName:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->startActivityForResultForWidgetSetting(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/home/personalize/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/home/personalize/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, parent:Lcom/htc/home/personalize/widget/AlbumAdapterView;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->isFlinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    invoke-direct {p0, p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->choose(I)V

    .line 991
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 27
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 1011
    sget-object v24, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v25, "onPrepareDialog mAdapter = null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :goto_0
    return-void

    .line 1015
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getCount()I

    move-result v24

    if-gtz v24, :cond_1

    .line 1016
    sget-object v24, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v25, "onPrepareDialog mAdapter is empty"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1020
    :cond_1
    const v24, 0x4e81d

    move/from16 v0, v24

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    .line 1021
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1024
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mAdapter:Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mCurrentPosition:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$StyleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 1025
    .local v23, wgt:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1028
    .local v12, packageName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1029
    .local v13, pm:Landroid/content/pm/PackageManager;
    const-string v22, "NA"

    .line 1030
    .local v22, version:Ljava/lang/String;
    const/high16 v16, -0x4080

    .line 1032
    .local v16, size:F
    :try_start_0
    sget-object v24, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "wgt.pkgName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 1034
    .local v11, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1035
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1036
    .local v2, aInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v24, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "wgt.source="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v3, Ljava/io/File;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v3, apk:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1039
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v16, v0

    .line 1045
    .end local v2           #aInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #apk:Ljava/io/File;
    .end local v11           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    const-string v19, " B"

    .line 1046
    .local v19, unit:Ljava/lang/String;
    const/high16 v24, 0x4480

    cmpg-float v24, v24, v16

    if-gez v24, :cond_5

    .line 1047
    const/high16 v24, 0x4480

    div-float v16, v16, v24

    .line 1048
    const-string v19, " KB"

    .line 1049
    const/high16 v24, 0x4480

    cmpg-float v24, v24, v16

    if-gez v24, :cond_4

    .line 1050
    const/high16 v24, 0x4480

    div-float v16, v16, v24

    .line 1051
    const-string v19, " MB"

    .line 1055
    :cond_4
    const/high16 v24, 0x42c8

    mul-float v24, v24, v16

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1056
    .local v18, tmp:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42c8

    div-float v16, v24, v25

    .line 1060
    .end local v18           #tmp:I
    :cond_5
    const-string v4, "N/A"

    .line 1061
    .local v4, date:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1063
    .local v8, desc:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1065
    .local v14, remote:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 1069
    :goto_2
    if-eqz v14, :cond_6

    .line 1073
    :try_start_2
    const-string v24, "rosie_widget_release_date"

    const-string v25, "string"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1076
    .local v15, remoteId:I
    if-eqz v15, :cond_6

    .line 1077
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1079
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v24, "y/M/d H:m"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v6, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1082
    .local v5, dateDate:Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "date_format"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1083
    .local v20, userDateFormat:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 1094
    .end local v5           #dateDate:Ljava/util/Date;
    .end local v6           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v15           #remoteId:I
    .end local v20           #userDateFormat:Ljava/lang/String;
    :cond_6
    :goto_3
    const v24, 0x7f0b005d

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1095
    .local v9, descV:Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getDescription()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    const v24, 0x7f0b005e

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1098
    .local v21, verV:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    const v24, 0x7f0b005f

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1101
    .local v7, dateV:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getDate()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    const v24, 0x7f0b0060

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1104
    .local v17, sizeV:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1041
    .end local v4           #date:Ljava/lang/String;
    .end local v7           #dateV:Landroid/widget/TextView;
    .end local v8           #desc:Ljava/lang/String;
    .end local v9           #descV:Landroid/widget/TextView;
    .end local v14           #remote:Landroid/content/res/Resources;
    .end local v17           #sizeV:Landroid/widget/TextView;
    .end local v19           #unit:Ljava/lang/String;
    .end local v21           #verV:Landroid/widget/TextView;
    :catch_0
    move-exception v10

    .line 1042
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v24, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "collectInfo: NameNotFoundException pkgName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1066
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #date:Ljava/lang/String;
    .restart local v8       #desc:Ljava/lang/String;
    .restart local v14       #remote:Landroid/content/res/Resources;
    .restart local v19       #unit:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1067
    .restart local v10       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v24, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->LOG_TAG:Ljava/lang/String;

    const-string v25, "collectInfo: NameNotFoundException"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1087
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v10

    .line 1089
    .local v10, e:Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 471
    if-eqz p1, :cond_0

    const-string v0, "backup_style_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mBackupStyleBundleData:Landroid/os/Bundle;

    .line 474
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 445
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 454
    new-instance v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;

    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFilmStripView:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v2

    iget v3, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LocalNonConfigurationInstance;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 461
    iget v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 466
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mStyles:Ljava/util/List;

    iget v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mSelectedStyle:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .line 464
    .local v0, s:Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->fillResultBundleData(Landroid/os/Bundle;Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/os/Bundle;

    move-result-object p1

    .line 465
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setupHeaderFooter()V
    .locals 1

    .prologue
    .line 427
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 428
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 429
    return-void
.end method
