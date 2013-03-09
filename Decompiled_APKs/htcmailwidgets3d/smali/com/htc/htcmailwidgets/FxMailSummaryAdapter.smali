.class public Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;
.super Lcom/htc/htcmailwidgets/FxMailBaseAdapter;
.source "FxMailSummaryAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final localLOGV:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field attachment:Landroid/graphics/drawable/Drawable;

.field bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field calendar:Landroid/graphics/drawable/Drawable;

.field colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field flag:Landroid/graphics/drawable/Drawable;

.field forward:Landroid/graphics/drawable/Drawable;

.field fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

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

.field photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field reply:Landroid/graphics/drawable/Drawable;

.field subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field subjectText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

.field timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

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

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V

    .line 44
    const-string v0, "FxMailSummaryAdapter"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->LOG_TAG:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    .line 63
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->flag:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->reply:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->forward:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inString:Landroid/text/SpannableStringBuilder;

    .line 71
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    .line 72
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    .line 73
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 74
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForOtherColor:Landroid/text/style/ForegroundColorSpan;

    .line 75
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    .line 81
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->reply:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->forward:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->flag:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    .line 89
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inString:Landroid/text/SpannableStringBuilder;

    .line 90
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    .line 91
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    .line 92
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x3b3b3c

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 93
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x5f5f60

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForOtherColor:Landroid/text/style/ForegroundColorSpan;

    .line 94
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    .line 96
    return-void
.end method

.method private getFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetAsyncListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 114
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 115
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 117
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 119
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 121
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 123
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 125
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 127
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 129
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 131
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 133
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 135
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_a
    return-void
.end method

.method private getSyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 101
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 102
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 104
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 106
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 108
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_3
    return-void
.end method


# virtual methods
.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 12
    .parameter "position"
    .parameter "item"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    .line 184
    .local v0, blabel01used:Z
    const/4 v1, 0x0

    .line 185
    .local v1, blabel02used:Z
    const/4 v2, 0x0

    .line 186
    .local v2, blabel03used:Z
    const/4 v3, 0x0

    .line 188
    .local v3, blabel04used:Z
    invoke-direct {p0, p2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v4

    .line 191
    .local v4, mail:Lcom/htc/htcmailwidgets/MailData;
    if-eqz v4, :cond_0

    .line 195
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    if-nez v6, :cond_c

    .line 196
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v6, :cond_2

    .line 197
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 198
    :cond_2
    iget-boolean v6, v4, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v6, :cond_b

    .line 199
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v5

    .line 200
    .local v5, s:Landroid/text/Spannable;
    if-eqz v5, :cond_3

    .line 201
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 231
    .end local v5           #s:Landroid/text/Spannable;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v10}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 232
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v10}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 233
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v10}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 234
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v10}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 236
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-lez v6, :cond_4

    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mProtocol:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 237
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFlag:I

    if-ne v6, v11, :cond_4

    .line 238
    if-nez v0, :cond_13

    .line 239
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 241
    const/4 v0, 0x1

    .line 258
    :cond_4
    :goto_2
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mImportance:I

    if-ne v6, v11, :cond_5

    .line 260
    if-nez v0, :cond_16

    .line 261
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 263
    const/4 v0, 0x1

    .line 279
    :cond_5
    :goto_3
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mImportance:I

    if-nez v6, :cond_6

    .line 280
    if-nez v0, :cond_19

    .line 281
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 283
    const/4 v0, 0x1

    .line 299
    :cond_6
    :goto_4
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mAttachment:I

    if-lez v6, :cond_7

    .line 300
    if-nez v0, :cond_1c

    .line 301
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 303
    const/4 v0, 0x1

    .line 319
    :cond_7
    :goto_5
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mCalendar:I

    if-lez v6, :cond_8

    .line 320
    if-nez v0, :cond_1f

    .line 321
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 323
    const/4 v0, 0x1

    .line 339
    :cond_8
    :goto_6
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    if-ne v6, v9, :cond_9

    .line 340
    if-nez v0, :cond_22

    .line 341
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 343
    const/4 v0, 0x1

    .line 359
    :cond_9
    :goto_7
    iget v6, v4, Lcom/htc/htcmailwidgets/MailData;->mMailAct:I

    if-ne v6, v11, :cond_a

    .line 360
    if-nez v0, :cond_25

    .line 361
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 363
    const/4 v0, 0x1

    .line 379
    :cond_a
    :goto_8
    iget-boolean v6, v4, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v6, :cond_28

    .line 381
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 382
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 383
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v5

    .line 384
    .restart local v5       #s:Landroid/text/Spannable;
    if-eqz v5, :cond_0

    .line 385
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 203
    .end local v5           #s:Landroid/text/Spannable;
    :cond_b
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v7, v4, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :cond_c
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, v4, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v6, :cond_d

    .line 210
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->text_mail:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v7, 0x4120

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 212
    :cond_d
    iget-boolean v6, v4, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v6, :cond_11

    .line 213
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_9
    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v5

    .line 214
    .restart local v5       #s:Landroid/text/Spannable;
    if-eqz v5, :cond_e

    .line 215
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 216
    :cond_e
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    .line 217
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v5

    .line 218
    if-eqz v5, :cond_f

    .line 219
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 221
    :cond_f
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v8, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v5

    .line 222
    if-eqz v5, :cond_3

    .line 223
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 213
    .end local v5           #s:Landroid/text/Spannable;
    :cond_10
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_9

    .line 225
    :cond_11
    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v6, :cond_12

    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_a
    invoke-virtual {v7, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v7, v4, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v7, v4, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 225
    :cond_12
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_a

    .line 242
    :cond_13
    if-nez v1, :cond_14

    .line 243
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 245
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 246
    :cond_14
    if-nez v2, :cond_15

    .line 247
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 249
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 250
    :cond_15
    if-nez v3, :cond_4

    .line 251
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->flag:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 253
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 264
    :cond_16
    if-nez v1, :cond_17

    .line 265
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 267
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 268
    :cond_17
    if-nez v2, :cond_18

    .line 269
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 271
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 272
    :cond_18
    if-nez v3, :cond_5

    .line 273
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->hipriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 275
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 284
    :cond_19
    if-nez v1, :cond_1a

    .line 285
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 287
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 288
    :cond_1a
    if-nez v2, :cond_1b

    .line 289
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 291
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 292
    :cond_1b
    if-nez v3, :cond_6

    .line 293
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->lowpriority:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 295
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 304
    :cond_1c
    if-nez v1, :cond_1d

    .line 305
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 307
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 308
    :cond_1d
    if-nez v2, :cond_1e

    .line 309
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 311
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 312
    :cond_1e
    if-nez v3, :cond_7

    .line 313
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->attachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 315
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 324
    :cond_1f
    if-nez v1, :cond_20

    .line 325
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 327
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 328
    :cond_20
    if-nez v2, :cond_21

    .line 329
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 331
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 332
    :cond_21
    if-nez v3, :cond_8

    .line 333
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->calendar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 335
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 344
    :cond_22
    if-nez v1, :cond_23

    .line 345
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 347
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 348
    :cond_23
    if-nez v2, :cond_24

    .line 349
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 351
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 352
    :cond_24
    if-nez v3, :cond_9

    .line 353
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->reply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 355
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 364
    :cond_25
    if-nez v1, :cond_26

    .line 365
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 367
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 368
    :cond_26
    if-nez v2, :cond_27

    .line 369
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label03:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 372
    :cond_27
    if-nez v3, :cond_a

    .line 373
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->forward:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->label04:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 375
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 389
    :cond_28
    iget-object v6, v4, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 390
    iget-object v6, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v7, v4, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 6
    .parameter "position"
    .parameter "item"
    .parameter "messageEventType"

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v0

    .line 148
    .local v0, mail:Lcom/htc/htcmailwidgets/MailData;
    if-eqz v0, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, s:Landroid/text/Spannable;
    iget-boolean v2, v0, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-eqz v2, :cond_5

    .line 153
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_2

    .line 155
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 157
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_3

    .line 159
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 166
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->bUniversalInbox:Z

    if-eqz v2, :cond_8

    .line 167
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mColorLabel:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 168
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 153
    :cond_4
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_5
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_6
    iget-object v2, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_3

    .line 170
    :cond_7
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mColorLabel:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 174
    :cond_8
    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailSummaryAdapter;->colorLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method
