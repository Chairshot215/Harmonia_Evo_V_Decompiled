.class public Lcom/htc/textselection/HtcTextSelectionWrapper;
.super Ljava/lang/Object;
.source "HtcTextSelectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/HtcTextSelectionWrapper$SelectionWatcher;,
        Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;
    }
.end annotation


# static fields
.field public static final FLAG_END_BY_OUTSIDE_TOUCH:I = 0x8

.field public static final FLAG_INPUT_TYPE_NULL_SELECTION:I = 0x4

.field public static final FLAG_NON_EDITABLE_SELECTION:I = 0x1

.field public static final FLAG_SHOW_QUICK_ACTION:I = 0x10

.field public static final FLAG_TRIGGER_BY_LONG_CLICK:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcTextSelectionWrapper"

.field private static mFlags:I

.field private static mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x10

    sput v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mFlags:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static enableHtcTextSelection(Landroid/widget/TextView;ZI)V
    .locals 1
    .parameter "tv"
    .parameter "enable"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZZ)V

    goto :goto_0
.end method

.method public static enableHtcTextSelection(Landroid/widget/TextView;ZZ)V
    .locals 0
    .parameter "tv"
    .parameter "enable"
    .parameter "triggerByLongClick"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->enableHtcTextSelection(ZZ)V

    .line 53
    return-void
.end method

.method public static findWordEnd(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 186
    invoke-static {p0, p1}, Landroid/widget/TextView;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static findWordStart(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 173
    invoke-static {p0, p1}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 90
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static getOffset(Landroid/widget/TextView;FF)I
    .locals 1
    .parameter "tv"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    return v0
.end method

.method public static getOffset(Landroid/widget/TextView;II)I
    .locals 2
    .parameter "tv"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 145
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    return v0
.end method

.method public static instanceofHtcTextSelectionManager(Landroid/text/method/MovementMethod;)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 220
    instance-of v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;

    return v0
.end method

.method public static setSelectionWatcher(Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 105
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 106
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionWrapper;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    new-instance v1, Lcom/htc/textselection/HtcTextSelectionWrapper$1;

    invoke-direct {v1, p0}, Lcom/htc/textselection/HtcTextSelectionWrapper$1;-><init>(Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;)V

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->setSelectionWatcher(Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;)V

    .line 115
    return-void
.end method
