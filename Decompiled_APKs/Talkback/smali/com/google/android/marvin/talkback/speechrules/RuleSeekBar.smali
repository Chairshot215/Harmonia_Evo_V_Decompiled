.class public Lcom/google/android/marvin/talkback/speechrules/RuleSeekBar;
.super Lcom/google/android/marvin/talkback/speechrules/RuleDefault;
.source "RuleSeekBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 35
    .line 36
    const-class v0, Landroid/widget/SeekBar;

    .line 35
    invoke-static {p1, p2, v0}, Lcom/googlecode/eyesfree/utils/AccessibilityNodeInfoUtils;->nodeMatchesClassByType(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "node"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v2, output:Ljava/lang/StringBuilder;
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/speechrules/RuleDefault;->format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 44
    .local v4, text:Ljava/lang/CharSequence;
    const v5, 0x7f090043

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, formattedText:Ljava/lang/CharSequence;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v2, v5}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 50
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v6

    div-int v3, v5, v6

    .line 52
    .local v3, percent:I
    const v5, 0x7f090044

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, formattedPercent:Ljava/lang/CharSequence;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {v2, v5}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .end local v0           #formattedPercent:Ljava/lang/CharSequence;
    .end local v3           #percent:I
    :cond_0
    return-object v2
.end method
