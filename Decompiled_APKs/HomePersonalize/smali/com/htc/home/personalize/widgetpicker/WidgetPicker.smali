.class public Lcom/htc/home/personalize/widgetpicker/WidgetPicker;
.super Landroid/app/Activity;
.source "WidgetPicker.java"


# static fields
.field public static final ALL_HTC_SETTING_WIDGETS:I = -0x3e7

.field public static final ALL_HTC_WIDGETS:I = -0x1

.field private static final DIALOG_DETAILSVIEW:I = 0x4e81d

.field public static final ITEM_TYPE:Ljava/lang/String; = "item_type"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WAIT_FOR_RESULT:Ljava/lang/String; = "waitForActivityResult"

.field public static final WIDGET_2D:Ljava/lang/String; = "widget_2d"

.field public static localLOGV:Z


# instance fields
.field private adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

.field private gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

.field private mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

.field private mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

.field private mNoSpaceAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mPendingItemType:I

.field private next:Landroid/widget/ImageView;

.field private final onItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

.field private prev:Landroid/widget/ImageView;

.field private subTitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->localLOGV:Z

    .line 75
    const-class v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    .line 87
    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 88
    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 90
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$1;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->onItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->updateTitle(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/home/personalize/widget/HtcFilmstripView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->choose(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mNoSpaceAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private choose(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V
    .locals 7
    .parameter "w"

    .prologue
    const/4 v6, -0x1

    .line 298
    sget-object v3, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "choose id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v2, 0x0

    .line 307
    .local v2, waitForActivityResult:Z
    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getParentId()I

    move-result v3

    if-eq v6, v3, :cond_0

    .line 312
    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getId()I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mPendingItemType:I

    .line 313
    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->loadWidgetClass(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    move-result-object v1

    .line 315
    .local v1, mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    if-eqz v1, :cond_0

    .line 316
    iget-object v3, v1, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getStyleIndex()I

    move-result v4

    invoke-interface {v3, v4, p0}, Lcom/htc/home/WidgetGroupItemInterface;->onSelectedAt(ILandroid/app/Activity;)Z

    move-result v2

    .line 322
    .end local v1           #mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    :cond_0
    if-nez v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 325
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "item_type"

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v3, "waitForActivityResult"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v6, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->finish()V

    .line 330
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private createAlertDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090048

    new-instance v2, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$5;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$5;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private loadWidgetClass(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .locals 11
    .parameter "packageName"
    .parameter "pluginClassname"

    .prologue
    const/4 v8, 0x0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, p1, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 535
    .local v6, pluginContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 536
    .local v5, pClassLoader:Ljava/lang/ClassLoader;
    const/4 v7, 0x1

    invoke-static {p2, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 538
    .local v0, clazz:Ljava/lang/Class;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 539
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 540
    .local v4, object:Ljava/lang/Object;
    instance-of v7, v4, Lcom/htc/home/WidgetGroupItemInterface;

    if-eqz v7, :cond_0

    .line 541
    new-instance v3, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    invoke-direct {v3}, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;-><init>()V

    .line 542
    .local v3, item:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    iput-object p1, v3, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mPackageName:Ljava/lang/String;

    .line 543
    check-cast v4, Lcom/htc/home/WidgetGroupItemInterface;

    .end local v4           #object:Ljava/lang/Object;
    iput-object v4, v3, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 555
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    .end local v3           #item:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .end local v5           #pClassLoader:Ljava/lang/ClassLoader;
    .end local v6           #pluginContext:Landroid/content/Context;
    :goto_0
    return-object v3

    .line 546
    :catch_0
    move-exception v2

    .line 547
    .local v2, e:Ljava/lang/ClassNotFoundException;
    sget-object v7, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

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

    .line 555
    goto :goto_0

    .line 548
    :catch_1
    move-exception v2

    .line 549
    .local v2, e:Ljava/lang/NoSuchMethodException;
    sget-object v7, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    const-string v9, "Widget Plugin Class doesn\'t have default constructor."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 552
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 553
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTitle(I)V
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 264
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->title:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->subTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->prev:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->next:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getItem(I)Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    move-result-object v0

    .line 273
    .local v0, tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->subTitle:Landroid/widget/TextView;

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

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    if-nez p1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->prev:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 283
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->next:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->prev:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->next:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 336
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 340
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    if-eqz p3, :cond_1

    .line 344
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mPendingItemType:I

    if-lez v0, :cond_0

    .line 345
    const-string v0, "item_type"

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mPendingItemType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    :cond_0
    const-string v0, "waitForActivityResult"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->setResult(ILandroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->finish()V

    .line 352
    :cond_2
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v12, 0x0

    .line 114
    .local v12, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    const/4 v9, -0x1

    .line 115
    .local v9, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v2, v13

    check-cast v2, [Ljava/lang/Object;

    .line 116
    .local v2, data:[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 117
    const/4 v13, 0x0

    aget-object v12, v2, v13

    .end local v12           #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    check-cast v12, Ljava/util/List;

    .line 118
    .restart local v12       #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    const/4 v13, 0x1

    aget-object v13, v2, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 119
    const/4 v13, 0x2

    aget-object v13, v2, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mPendingItemType:I

    .line 122
    :cond_0
    if-nez v12, :cond_1

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 124
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "item_type"

    const/4 v14, -0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 125
    .local v7, itemType:I
    sget-object v13, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    const-string v14, "onCreate: start collecting widget info"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 127
    .local v10, start:J
    const/16 v13, -0x3e7

    if-ne v13, v7, :cond_3

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->collectSettingWidgetInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 132
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/htc/home/personalize/util/Utilities;->filter2D(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 134
    sget-object v13, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate: finished collecting widget info, time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #itemType:I
    .end local v10           #start:J
    :cond_1
    new-instance v13, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    move-object/from16 v0, p0

    invoke-direct {v13, v12, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    .line 139
    const v13, 0x7f030022

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->setContentView(I)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->setupHeaderFooter()V

    .line 142
    const v13, 0x7f0b0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->title:Landroid/widget/TextView;

    .line 143
    const v13, 0x7f0b0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->subTitle:Landroid/widget/TextView;

    .line 144
    const v13, 0x7f0b0066

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->prev:Landroid/widget/ImageView;

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->prev:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 147
    const v13, 0x7f0b0068

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->next:Landroid/widget/ImageView;

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->next:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    new-instance v14, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)V

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    const v14, 0x7f090043

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    new-instance v14, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$3;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)V

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    const v14, 0x7f090002

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 186
    const v13, 0x7f0b0062

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/home/personalize/widget/HtcFilmstripView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->onItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setOnItemSelectedListener(Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    new-instance v14, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)V

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setOnItemClickListener(Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemClickListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setPadding(IIII)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSpacing(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setFadingEdgeLength(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/high16 v14, 0x437f

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setVerticalScrollBarEnabled(Z)V

    .line 206
    const/4 v13, -0x1

    if-eq v13, v9, :cond_2

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v13, v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSelection(I)V

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v13}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->updateTitle(I)V

    .line 223
    const-string v13, "common_app_bkg"

    const v14, 0x20806b7

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, background:I
    const v13, 0x7f0b0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 225
    .local v4, footerBackground:Landroid/widget/ImageView;
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 228
    .local v3, display:Landroid/view/Display;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x205017a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 229
    .local v5, footerHeight:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 230
    .local v8, matrix:Landroid/graphics/Matrix;
    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v14

    sub-int/2addr v14, v5

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 232
    return-void

    .line 130
    .end local v1           #background:I
    .end local v3           #display:Landroid/view/Display;
    .end local v4           #footerBackground:Landroid/widget/ImageView;
    .end local v5           #footerHeight:I
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #itemType:I
    .restart local v10       #start:J
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v13}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->collectWidgetInfo(Landroid/content/Context;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v12

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 410
    const v0, 0x4e81d

    if-eq v0, p1, :cond_0

    .line 411
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    .line 428
    :goto_0
    return-object v6

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 414
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030021

    invoke-virtual {v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 416
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

    .line 428
    .local v6, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 247
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 28
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 433
    const v25, 0x4e81d

    move/from16 v0, v25

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 434
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 437
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getItem(I)Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    move-result-object v24

    check-cast v24, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    .line 441
    .local v24, wgt:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 442
    .local v13, pm:Landroid/content/pm/PackageManager;
    const-string v23, "NA"

    .line 443
    .local v23, version:Ljava/lang/String;
    const/high16 v17, -0x4080

    .line 445
    .local v17, size:F
    :try_start_0
    sget-object v25, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "wgt.pkgName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 447
    .local v12, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 448
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 449
    .local v3, aInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v25, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "wgt.source="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v4, Ljava/io/File;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v4, apk:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 452
    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v17, v0

    .line 458
    .end local v3           #aInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #apk:Ljava/io/File;
    .end local v12           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    const-string v20, " B"

    .line 459
    .local v20, unit:Ljava/lang/String;
    const/high16 v25, 0x4480

    cmpg-float v25, v25, v17

    if-gez v25, :cond_3

    .line 460
    const/high16 v25, 0x4480

    div-float v17, v17, v25

    .line 461
    const-string v20, " KB"

    .line 462
    const/high16 v25, 0x4480

    cmpg-float v25, v25, v17

    if-gez v25, :cond_2

    .line 463
    const/high16 v25, 0x4480

    div-float v17, v17, v25

    .line 464
    const-string v20, " MB"

    .line 468
    :cond_2
    const/high16 v25, 0x42c8

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 469
    .local v19, tmp:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42c8

    div-float v17, v25, v26

    .line 473
    .end local v19           #tmp:I
    :cond_3
    const-string v5, "N/A"

    .line 474
    .local v5, date:Ljava/lang/String;
    const/4 v9, 0x0

    .line 476
    .local v9, desc:Ljava/lang/String;
    const/4 v15, 0x0

    .line 478
    .local v15, remote:Landroid/content/res/Resources;
    :try_start_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 482
    :goto_1
    if-eqz v15, :cond_6

    .line 486
    :try_start_2
    const-string v25, "rosie_widget_release_date"

    const-string v26, "string"

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 489
    .local v16, remoteId:I
    if-eqz v16, :cond_4

    .line 490
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 492
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v25, "y/M/d H:m"

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 493
    .local v7, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 495
    .local v6, dateDate:Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "date_format"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 496
    .local v21, userDateFormat:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 505
    .end local v6           #dateDate:Ljava/util/Date;
    .end local v7           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v16           #remoteId:I
    .end local v21           #userDateFormat:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual/range {v24 .. v24}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v14

    .line 506
    .local v14, prop:Lcom/htc/home/WidgetItemProperties;
    if-eqz v14, :cond_5

    .line 507
    invoke-virtual/range {v24 .. v24}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getStyleIndex()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0, v15}, Lcom/htc/home/WidgetItemProperties;->getDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    .line 509
    :cond_5
    sget-object v25, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "collectInfo: desc="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v14           #prop:Lcom/htc/home/WidgetItemProperties;
    :cond_6
    const v25, 0x7f0b005d

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 513
    .local v10, descV:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const v25, 0x7f0b005e

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 516
    .local v22, verV:Landroid/widget/TextView;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    const v25, 0x7f0b005f

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 519
    .local v8, dateV:Landroid/widget/TextView;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    const v25, 0x7f0b0060

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 522
    .local v18, sizeV:Landroid/widget/TextView;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    return-void

    .line 454
    .end local v5           #date:Ljava/lang/String;
    .end local v8           #dateV:Landroid/widget/TextView;
    .end local v9           #desc:Ljava/lang/String;
    .end local v10           #descV:Landroid/widget/TextView;
    .end local v15           #remote:Landroid/content/res/Resources;
    .end local v18           #sizeV:Landroid/widget/TextView;
    .end local v20           #unit:Ljava/lang/String;
    .end local v22           #verV:Landroid/widget/TextView;
    :catch_0
    move-exception v11

    .line 455
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v25, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "collectInfo: NameNotFoundException pkgName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 479
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #date:Ljava/lang/String;
    .restart local v9       #desc:Ljava/lang/String;
    .restart local v15       #remote:Landroid/content/res/Resources;
    .restart local v20       #unit:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 480
    .restart local v11       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v25, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    const-string v26, "collectInfo: NameNotFoundException"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 500
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v11

    .line 501
    .local v11, e:Ljava/text/ParseException;
    sget-object v25, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "collectInfo: ParseException date="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 252
    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    invoke-virtual {v6}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getWidgets()Ljava/util/List;

    move-result-object v5

    .line 254
    .local v5, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .local v3, tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    move-object v4, v3

    .line 255
    check-cast v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    .line 256
    .local v4, wdg:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->preview:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 258
    .end local v3           #tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    .end local v4           #wdg:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    :cond_0
    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v1

    .line 259
    .local v1, pos:I
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mPendingItemType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 260
    .local v2, ret:[Ljava/lang/Object;
    return-object v2
.end method

.method public setupHeaderFooter()V
    .locals 1

    .prologue
    .line 235
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonLeft:Lcom/htc/widget/HtcFooterButton;

    .line 236
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;

    .line 237
    return-void
.end method
