.class public Lcom/htc/htcmailwidgets/FxMailPaperAdapter;
.super Lcom/htc/htcmailwidgets/FxMailBaseAdapter;
.source "FxMailPaperAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final localLOGV:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private accountText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private accountText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private delBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private deleteTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field inForColor:Landroid/text/style/ForegroundColorSpan;

.field inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

.field inString:Landroid/text/SpannableStringBuilder;

.field inStyle:Landroid/text/style/StyleSpan;

.field inUnreadStyle:Landroid/text/style/StyleSpan;

.field private mailindex:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private replyBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

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

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/FxMailBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htcmailwidgets/Components$WidgetInfo;)V

    .line 23
    const-string v0, "FxMailPaperAdpater"

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inString:Landroid/text/SpannableStringBuilder;

    .line 45
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inStyle:Landroid/text/style/StyleSpan;

    .line 46
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    .line 47
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 48
    iput-object v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    .line 53
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inString:Landroid/text/SpannableStringBuilder;

    .line 54
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inStyle:Landroid/text/style/StyleSpan;

    .line 55
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    .line 56
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xcccccd

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 57
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    .line 59
    return-void
.end method

.method private getAsyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetAsyncListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 105
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 106
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 109
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 112
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 115
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 117
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->accountText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 119
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->accountText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxAsyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 122
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_6
    return-void
.end method

.method private getSyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 63
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->os_:Lcom/htc/htcmailwidgets/Components$OS_VERSION;

    iget v1, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mResolution:I

    iget-object v2, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mWidgetInfo:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget v2, v2, Lcom/htc/htcmailwidgets/Components$WidgetInfo;->type:I

    invoke-static {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components;->getWidgetListItemObjectMap(Lcom/htc/htcmailwidgets/Components$OS_VERSION;II)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    .line 65
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->deleteTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 66
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    aget-object v0, v0, v3

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 69
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 72
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 75
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 79
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 80
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 84
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->accountText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 87
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->accountText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->delBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 90
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->delBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->replyBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 92
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->replyBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_8
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 95
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fxSyncControlObj:[Lcom/htc/fusion/fx/FxObject;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mailindex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 98
    sget-boolean v0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mailindex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_a
    return-void
.end method


# virtual methods
.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 8
    .parameter "position"
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getAsyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v0

    .line 190
    .local v0, mail:Lcom/htc/htcmailwidgets/MailData;
    if-eqz v0, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, s:Landroid/text/Spannable;
    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 195
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 218
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v3, :cond_3

    .line 219
    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mAttachment:I

    if-lez v3, :cond_d

    .line 221
    iget v3, v0, Lcom/htc/htcmailwidgets/MailData;->mAttachmentIcon:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    iget v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mResolution:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 222
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/htc/htcmailwidgets/MailData;->mAttachmentIcon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 223
    .local v2, thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 235
    .end local v2           #thumbnail:Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->bodyText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailData;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photo:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailData;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_5

    .line 201
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v4, 0x4120

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 203
    :cond_5
    iget-boolean v3, v0, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-nez v3, :cond_8

    .line 204
    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_3
    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_6

    .line 206
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 213
    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->timeText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->accountText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailData;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_7
    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_3

    .line 208
    :cond_8
    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_5
    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_6

    .line 210
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 208
    :cond_9
    iget-object v3, v0, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_5

    .line 225
    :cond_a
    iget v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mResolution:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_b

    iget v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mResolution:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 226
    :cond_b
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 227
    .restart local v2       #thumbnail:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 230
    .end local v2           #thumbnail:Landroid/graphics/drawable/Drawable;
    :cond_c
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 232
    :cond_d
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->attachment:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_2
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 6
    .parameter "position"
    .parameter "item"
    .parameter "messageEventType"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getSyncFxObjects(Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v1

    .line 136
    .local v1, mail:Lcom/htc/htcmailwidgets/MailData;
    if-eqz v1, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, s:Landroid/text/Spannable;
    iget-boolean v3, v1, Lcom/htc/htcmailwidgets/MailData;->mIsUnread:Z

    if-nez v3, :cond_5

    .line 142
    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_2

    .line 144
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 151
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->timeText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mDateString:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->accountText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->subjectText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mailindex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->mTotalCounts:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 158
    const/16 v3, 0x16

    if-eq p3, v3, :cond_3

    if-nez p3, :cond_0

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->deleteTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 161
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->delBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 162
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->replyBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 164
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 165
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 168
    :try_start_0
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->deleteTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mPagePlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 169
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->delBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mDeleteClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 171
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->replyBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mReplyClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 173
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->photoHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mPhotoHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 174
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/htcmailwidgets/MailData;->mFromHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto/16 :goto_1

    .line 146
    :cond_5
    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFrom:Ljava/lang/String;

    :goto_3
    iget-object v4, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inUnreadStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->inForUnreadColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getSpanString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_2

    .line 148
    iget-object v3, p0, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->fromText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 146
    :cond_6
    iget-object v3, v1, Lcom/htc/htcmailwidgets/MailData;->mFromEmail:Ljava/lang/String;

    goto :goto_3
.end method
