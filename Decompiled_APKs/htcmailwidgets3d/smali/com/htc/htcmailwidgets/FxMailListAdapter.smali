.class public Lcom/htc/htcmailwidgets/FxMailListAdapter;
.super Lcom/htc/htcmailwidgets/FxMailBaseAdapter;
.source "FxMailListAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final localLOGV:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field attachment:Landroid/graphics/drawable/Drawable;

.field calendar:Landroid/graphics/drawable/Drawable;

.field colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field flag:Landroid/graphics/drawable/Drawable;

.field forward:Landroid/graphics/drawable/Drawable;

.field fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field hipriority:Landroid/graphics/drawable/Drawable;

.field inForColor:Landroid/text/style/ForegroundColorSpan;

.field inForOtherColor:Landroid/text/style/ForegroundColorSpan;

.field inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

.field inString:Landroid/text/SpannableStringBuilder;

.field inStyle:Landroid/text/style/StyleSpan;

.field inUnreadStyle:Landroid/text/style/StyleSpan;

.field label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field lowpriority:Landroid/graphics/drawable/Drawable;

.field reply:Landroid/graphics/drawable/Drawable;

.field subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Lcom/htc/htcmailwidgets/Components$WidgetInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcmailwidgets/MailData;>;"
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V

    .line 19
    const-string v0, "FxMailListAdapter"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->LOG_TAG:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->flag:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->reply:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->forward:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inString:Landroid/text/SpannableStringBuilder;

    .line 40
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inStyle:Landroid/text/style/StyleSpan;

    .line 41
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    .line 42
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 43
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForOtherColor:Landroid/text/style/ForegroundColorSpan;

    .line 44
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    .line 49
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->reply:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->forward:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->flag:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    .line 57
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inString:Landroid/text/SpannableStringBuilder;

    .line 58
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inStyle:Landroid/text/style/StyleSpan;

    .line 59
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    .line 60
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x3b3b3c

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 61
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x5f5f60

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForOtherColor:Landroid/text/style/ForegroundColorSpan;

    .line 62
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    .line 63
    return-void
.end method

.method private getFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetAsyncListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 81
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 82
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 84
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 86
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 88
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_3
    return-void
.end method

.method private getSyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 68
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 69
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 71
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 73
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 75
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_3
    return-void
.end method


# virtual methods
.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 9
    .parameter "position"
    .parameter "item"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, blabel01used:Z
    const/4 v1, 0x0

    .line 140
    .local v1, blabel02used:Z
    const/4 v2, 0x0

    .line 141
    .local v2, blabel03used:Z
    const/4 v3, 0x0

    .line 143
    .local v3, blabel04used:Z
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v4

    .line 144
    .local v4, mail:Lcom/htc/htcmailwidgets/MailData;
    if-eqz v4, :cond_0

    .line 147
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 148
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 149
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 150
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 152
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-lez v5, :cond_2

    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mProtocol:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 153
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-ne v5, v8, :cond_2

    .line 154
    if-nez v0, :cond_8

    .line 155
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 157
    const/4 v0, 0x1

    .line 174
    :cond_2
    :goto_1
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mImportance:I

    if-ne v5, v8, :cond_3

    .line 176
    if-nez v0, :cond_b

    .line 177
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 179
    const/4 v0, 0x1

    .line 195
    :cond_3
    :goto_2
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mImportance:I

    if-nez v5, :cond_4

    .line 196
    if-nez v0, :cond_e

    .line 197
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 199
    const/4 v0, 0x1

    .line 215
    :cond_4
    :goto_3
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mAttachment:I

    if-lez v5, :cond_5

    .line 216
    if-nez v0, :cond_11

    .line 217
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 219
    const/4 v0, 0x1

    .line 235
    :cond_5
    :goto_4
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mCalendar:I

    if-lez v5, :cond_6

    .line 236
    if-nez v0, :cond_14

    .line 237
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 239
    const/4 v0, 0x1

    .line 255
    :cond_6
    :goto_5
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    if-ne v5, v7, :cond_7

    .line 256
    if-nez v0, :cond_17

    .line 257
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 259
    const/4 v0, 0x1

    .line 275
    :cond_7
    :goto_6
    iget v5, v4, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    if-ne v5, v8, :cond_0

    .line 276
    if-nez v0, :cond_1a

    .line 277
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 158
    :cond_8
    if-nez v1, :cond_9

    .line 159
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 161
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 162
    :cond_9
    if-nez v2, :cond_a

    .line 163
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 165
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 166
    :cond_a
    if-nez v3, :cond_2

    .line 167
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 169
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 180
    :cond_b
    if-nez v1, :cond_c

    .line 181
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 183
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 184
    :cond_c
    if-nez v2, :cond_d

    .line 185
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 188
    :cond_d
    if-nez v3, :cond_3

    .line 189
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 191
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 200
    :cond_e
    if-nez v1, :cond_f

    .line 201
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 203
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 204
    :cond_f
    if-nez v2, :cond_10

    .line 205
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 207
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 208
    :cond_10
    if-nez v3, :cond_4

    .line 209
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 211
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 220
    :cond_11
    if-nez v1, :cond_12

    .line 221
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 223
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 224
    :cond_12
    if-nez v2, :cond_13

    .line 225
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 227
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 228
    :cond_13
    if-nez v3, :cond_5

    .line 229
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 231
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 240
    :cond_14
    if-nez v1, :cond_15

    .line 241
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 243
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 244
    :cond_15
    if-nez v2, :cond_16

    .line 245
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 247
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 248
    :cond_16
    if-nez v3, :cond_6

    .line 249
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 251
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 260
    :cond_17
    if-nez v1, :cond_18

    .line 261
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 264
    :cond_18
    if-nez v2, :cond_19

    .line 265
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 267
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 268
    :cond_19
    if-nez v3, :cond_7

    .line 269
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 271
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 280
    :cond_1a
    if-nez v1, :cond_1b

    .line 281
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 284
    :cond_1b
    if-nez v2, :cond_1c

    .line 285
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 288
    :cond_1c
    if-nez v3, :cond_0

    .line 289
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 291
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 6
    .parameter "position"
    .parameter "item"
    .parameter "messageEventType"

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getSyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v0

    .line 99
    .local v0, mail:Lcom/htc/htcmailwidgets/MailData;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, s:Landroid/text/Spannable;
    iget-boolean v2, v0, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v2, :cond_6

    .line 105
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 108
    :cond_2
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 111
    :cond_3
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/htcmailwidgets/FxMailListAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 120
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->bUniversalInbox:Z

    if-eqz v2, :cond_9

    .line 121
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mColorLabel:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 122
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 105
    :cond_5
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_6
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_7
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_3

    .line 124
    :cond_8
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mColorLabel:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 128
    :cond_9
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailListAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method
