.class public Lcom/google/android/marvin/talkback/formatter/calendar/DayViewWindowStateChangedFormatter;
.super Ljava/lang/Object;
.source "DayViewWindowStateChangedFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static final COMMA:C = ','

.field private static final GINGERBREAD:I = 0x9

.field private static final HONEYCOMB:I = 0xa

.field private static final KEY_SHOWN_DAY_COUNT:Ljava/lang/String; = "shownDayCount"

.field private static final PERIOD:C = '.'

#the value of this static final field might be set in the static constructor
.field private static final SDK_INT:I = 0x0

.field private static final SPACE:C = ' '

.field private static final WEEK_DAY_COUNT:I = 0x7


# instance fields
.field private final mWeekSplitPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayViewWindowStateChangedFormatter;->SDK_INT:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, " \u2013 "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayViewWindowStateChangedFormatter;->mWeekSplitPattern:Ljava/util/regex/Pattern;

    .line 37
    return-void
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 11
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 54
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 56
    .local v5, textBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, eventText:Ljava/lang/CharSequence;
    sget v8, Lcom/google/android/marvin/talkback/formatter/calendar/DayViewWindowStateChangedFormatter;->SDK_INT:I

    packed-switch v8, :pswitch_data_0

    .line 76
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v7

    .line 77
    .local v7, todayEventCount:I
    if-lez v7, :cond_0

    .line 78
    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0c

    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/4 v8, 0x1

    return v8

    .line 59
    .end local v7           #todayEventCount:I
    :pswitch_0
    const v8, 0x7f0900ba

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 63
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "shownDayCount"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 64
    .local v4, shownDayCount:I
    const/4 v8, 0x7

    if-ne v4, v8, :cond_1

    .line 65
    iget-object v8, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayViewWindowStateChangedFormatter;->mWeekSplitPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, rangeFragments:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 67
    .local v2, fromDate:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v6, v3, v8

    .line 68
    .local v6, toDate:Ljava/lang/String;
    const v8, 0x7f0900bb

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    .line 69
    aput-object v6, v9, v10

    .line 68
    invoke-virtual {p2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    .end local v2           #fromDate:Ljava/lang/String;
    .end local v3           #rangeFragments:[Ljava/lang/String;
    .end local v6           #toDate:Ljava/lang/String;
    :cond_1
    const v8, 0x7f0900ba

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
