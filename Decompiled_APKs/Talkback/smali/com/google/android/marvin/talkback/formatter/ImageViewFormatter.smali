.class public Lcom/google/android/marvin/talkback/formatter/ImageViewFormatter;
.super Ljava/lang/Object;
.source "ImageViewFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# instance fields
.field private ruleImageView:Lcom/google/android/marvin/talkback/speechrules/RuleImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/marvin/talkback/speechrules/RuleImageView;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/speechrules/RuleImageView;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/ImageViewFormatter;->ruleImageView:Lcom/google/android/marvin/talkback/speechrules/RuleImageView;

    .line 43
    return-void
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 7
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 48
    .local v0, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 49
    .local v1, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/ImageViewFormatter;->ruleImageView:Lcom/google/android/marvin/talkback/speechrules/RuleImageView;

    invoke-virtual {v3, p2, v1, p1}, Lcom/google/android/marvin/talkback/speechrules/RuleImageView;->format(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 50
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v3, 0x1

    return v3
.end method
