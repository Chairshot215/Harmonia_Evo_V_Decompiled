.class public final Lcom/google/android/marvin/talkback/formatter/phone/InCallScreenFormatterICS;
.super Ljava/lang/Object;
.source "InCallScreenFormatterICS.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static final INDEX_LABEL:I = 0x5

.field private static final INDEX_NAME:I = 0x3

.field private static final INDEX_NUMBER:I = 0x4

.field private static final INDEX_PHOTO:I = 0x2

.field private static final INDEX_UPPER_TITLE:I = 0x1

.field private static final SPACE:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 101
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, valueNoDashes:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v2, 0x1

    .line 106
    :goto_0
    return v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 12
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 49
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 51
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000e

    const v11, 0x7f0b0007

    .line 50
    invoke-static {v5, v9, v10, v11}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v6

    .line 53
    .local v6, speakCallerId:Z
    if-nez v6, :cond_0

    .line 55
    const/4 v9, 0x1

    .line 94
    :goto_0
    return v9

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v8

    .line 61
    .local v8, utteranceText:Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 62
    .local v7, title:Ljava/lang/CharSequence;
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 63
    .local v2, name:Ljava/lang/CharSequence;
    const/4 v9, 0x4

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 65
    .local v3, number:Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    .line 66
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 67
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 72
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_2
    if-nez v2, :cond_3

    .line 76
    const/4 v9, 0x1

    goto :goto_0

    .line 79
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/formatter/phone/InCallScreenFormatterICS;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 80
    const/4 v9, 0x5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 81
    .local v1, label:Ljava/lang/CharSequence;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 83
    .local v4, photo:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 85
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_4
    if-eqz v4, :cond_5

    .line 89
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 90
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v1           #label:Ljava/lang/CharSequence;
    .end local v4           #photo:Ljava/lang/CharSequence;
    :cond_5
    const/4 v9, 0x1

    goto :goto_0
.end method
