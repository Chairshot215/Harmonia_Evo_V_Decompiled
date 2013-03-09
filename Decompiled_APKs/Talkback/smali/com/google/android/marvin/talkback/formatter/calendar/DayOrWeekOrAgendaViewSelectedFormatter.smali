.class public final Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;
.super Ljava/lang/Object;
.source "DayOrWeekOrAgendaViewSelectedFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static final CALENDAR_EVENT_COLOR:Ljava/lang/String; = "color"

.field private static final CALENDAR_EVENT_END_MILLIS:Ljava/lang/String; = "endMillis"

.field private static final CALENDAR_EVENT_LOCATION:Ljava/lang/String; = "location"

.field private static final CALENDAR_EVENT_START_MILLIS:Ljava/lang/String; = "startMillis"

.field private static final CALENDAR_EVENT_TITLE:Ljava/lang/String; = "title"

.field private static CLASS_NAME_AGENDA_VIEW:Ljava/lang/String; = null

.field private static final CLASS_NAME_DAY_VIEW:Ljava/lang/String; = "com.android.calendar.DayView"

.field private static final COLOR:Ljava/lang/String; = "color"

.field private static final COLUMN_INDEX_COLOR:I = 0x0

.field private static final COLUMN_INDEX_DISPLAY_NAME:I = 0x1

.field private static final COMMA:C = ','

.field public static final CONTENT_URI_CALENDARS:Landroid/net/Uri; = null

.field private static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final GINGERBREAD:I = 0x9

.field private static final HONEYCOMB:I = 0xa

.field private static final PERIOD:C = '.'

.field private static final PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final SDK_INT:I = 0x0

.field private static final SELECTED:Ljava/lang/String; = "selected"

.field private static final SPACE:C = ' '


# instance fields
.field private final mColorToDisplayNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDateFragment:Ljava/lang/String;

.field private mLastTimeFragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->SDK_INT:I

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->CLASS_NAME_AGENDA_VIEW:Ljava/lang/String;

    .line 49
    sget v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->CONTENT_URI_CALENDARS:Landroid/net/Uri;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 82
    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    .line 81
    sput-object v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->PROJECTION:[Ljava/lang/String;

    .line 41
    return-void

    .line 51
    :pswitch_0
    const-string v0, "com.android.calendar.AgendaListView"

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->CLASS_NAME_AGENDA_VIEW:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_1
    const-string v0, "com.android.calendar.agenda.AgendaListView"

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->CLASS_NAME_AGENDA_VIEW:Ljava/lang/String;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mColorToDisplayNameMap:Landroid/util/SparseArray;

    .line 41
    return-void
.end method

.method private appendDisplayName(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "context"
    .parameter "event"
    .parameter "textBuilder"

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 316
    .local v2, parcelableData:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v3, "color"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 321
    .local v1, color:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mColorToDisplayNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, accountDescription:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->reloadColorToDisplayNameMap(Landroid/content/Context;)V

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mColorToDisplayNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 326
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mColorToDisplayNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #accountDescription:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 327
    .restart local v0       #accountDescription:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    const v3, 0x7f0900be

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v3, 0x2c

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    const/16 v3, 0x20

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/16 v3, 0x2e

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendEventCountAnnouncement(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "context"
    .parameter "event"
    .parameter "textBuilder"

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 248
    .local v1, eventIndex:I
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v0

    .line 249
    .local v0, eventCount:I
    const v2, 0x7f0900bd

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 249
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const/16 v2, 0x20

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    return-void
.end method

.method private appendEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "event"
    .parameter "textBuilder"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    return-void

    .line 140
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 141
    .local v0, subText:Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 142
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSelectedEventDetails(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V
    .locals 12
    .parameter "context"
    .parameter "event"
    .parameter "textBuilder"

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 266
    .local v7, parcelableData:Landroid/os/Bundle;
    if-nez v7, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendDisplayName(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 274
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 275
    .local v9, title:Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 278
    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    const-string v0, "startMillis"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 283
    .local v1, startMillis:J
    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    if-lez v0, :cond_4

    .line 284
    const-string v0, "endMillis"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 285
    .local v3, endMillis:J
    const v5, 0x81413

    .line 288
    .local v5, flags:I
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    or-int/lit16 v5, v5, 0x80

    :cond_3
    move-object v0, p1

    .line 291
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, timeRange:Ljava/lang/String;
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .end local v3           #endMillis:J
    .end local v5           #flags:I
    .end local v8           #timeRange:Ljava/lang/String;
    :cond_4
    const-string v0, "location"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 299
    .local v6, location:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 302
    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSelectedEventIndexAnouncement(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "context"
    .parameter "event"
    .parameter "textBuilder"

    .prologue
    const/16 v2, 0x20

    .line 229
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v0

    .line 230
    .local v0, eventCount:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 231
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendEventCountAnnouncement(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 233
    const/16 v1, 0x2e

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    return-void
.end method

.method private appendSelectedRange(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V
    .locals 11
    .parameter "context"
    .parameter "event"
    .parameter "textBuilder"

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    const/16 v8, 0x2e

    const/16 v7, 0x2c

    .line 155
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, eventText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, className:Ljava/lang/String;
    const-string v6, "com.android.calendar.DayView"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    move-object v4, v2

    .line 162
    .local v4, timeFragment:Ljava/lang/String;
    sget v6, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->SDK_INT:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastTimeFragment:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastTimeFragment:Ljava/lang/String;

    .line 166
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v1, 0x0

    .line 172
    .local v1, dateFragment:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 173
    .local v3, firstCommaIndex:I
    const/4 v6, -0x1

    if-le v3, v6, :cond_2

    .line 174
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 175
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_2
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastTimeFragment:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 178
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastTimeFragment:Ljava/lang/String;

    .line 179
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    if-nez v1, :cond_4

    .line 181
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    .end local v1           #dateFragment:Ljava/lang/String;
    .end local v3           #firstCommaIndex:I
    .end local v4           #timeFragment:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 194
    .restart local v3       #firstCommaIndex:I
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 195
    .restart local v4       #timeFragment:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .restart local v1       #dateFragment:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastDateFragment:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 197
    iput-object v1, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastDateFragment:Ljava/lang/String;

    .line 198
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v5

    .line 200
    .local v5, todayEventCount:I
    if-lez v5, :cond_6

    .line 201
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendEventCountAnnouncement(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 205
    :cond_6
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .end local v5           #todayEventCount:I
    :cond_7
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastTimeFragment:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mLastTimeFragment:Ljava/lang/String;

    .line 210
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 212
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatAgendaViewSelected(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)V
    .locals 1
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 127
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    .local v0, textBuilder:Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendDisplayName(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 130
    return-void
.end method

.method private formatDayOrWeekViewSelected(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)V
    .locals 1
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 112
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    .local v0, textBuilder:Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendSelectedRange(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 114
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendSelectedEventIndexAnouncement(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 115
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->appendSelectedEventDetails(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/StringBuilder;)V

    .line 116
    return-void
.end method

.method private reloadColorToDisplayNameMap(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->CONTENT_URI_CALENDARS:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->PROJECTION:[Ljava/lang/String;

    .line 344
    const-string v3, "selected=?"

    new-array v4, v10, [Ljava/lang/String;

    .line 345
    const-string v5, "1"

    aput-object v5, v4, v9

    .line 346
    const/4 v5, 0x0

    .line 343
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 347
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 357
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 352
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 353
    .local v6, color:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, dispayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->mColorToDisplayNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    .end local v6           #color:I
    .end local v8           #dispayName:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 2
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, className:Ljava/lang/String;
    sget-object v1, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->CLASS_NAME_AGENDA_VIEW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->formatAgendaViewSelected(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)V

    .line 100
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 97
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/calendar/DayOrWeekOrAgendaViewSelectedFormatter;->formatDayOrWeekViewSelected(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)V

    goto :goto_0
.end method
