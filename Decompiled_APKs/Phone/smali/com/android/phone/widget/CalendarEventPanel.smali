.class public Lcom/android/phone/widget/CalendarEventPanel;
.super Landroid/widget/ScrollView;
.source "CalendarEventPanel.java"


# static fields
.field public static final CALENDAR_EVENT_DATA:Ljava/lang/String; = "calendar_event_data"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "EE, MMM d, yyyy"

.field public static final DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String; = "EE, MMM d"

.field private static final TAG:Ljava/lang/String; = "CalendarEventPanel"

.field public static system_date_format:Ljava/lang/String;

.field public static system_date_format_short:Ljava/lang/String;


# instance fields
.field mDate:Landroid/widget/TextView;

.field mDescription:Landroid/view/View;

.field mDescriptionTxt:Landroid/widget/TextView;

.field mEvent:Lcom/htc/util/calendar/EventInstance;

.field mHidden:Z

.field mLocation:Landroid/view/View;

.field mLocationTxt:Landroid/widget/TextView;

.field mTime:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mHidden:Z

    .line 46
    invoke-static {p1}, Lcom/android/phone/widget/CalendarEventPanel;->fetchSystemDateFormat(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/android/phone/widget/CalendarEventPanel;->initBackground()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mHidden:Z

    .line 53
    invoke-static {p1}, Lcom/android/phone/widget/CalendarEventPanel;->fetchSystemDateFormat(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/android/phone/widget/CalendarEventPanel;->initBackground()V

    .line 56
    return-void
.end method

.method public static fetchSystemDateFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format_short:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 196
    if-nez p0, :cond_0

    .line 197
    const-string v4, ""

    .line 221
    :goto_0
    return-object v4

    .line 199
    :cond_0
    const/4 v0, 0x1

    .line 200
    .local v0, FORMAT_SHOW_TIME:I
    and-int/lit8 v7, p5, 0x1

    if-eqz v7, :cond_1

    move v1, v5

    .line 201
    .local v1, showTime:Z
    :goto_1
    const-string v4, ""

    .line 203
    .local v4, strReturn:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 205
    cmp-long v5, p1, p3

    if-nez v5, :cond_2

    .line 206
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v1           #showTime:Z
    .end local v4           #strReturn:Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 200
    goto :goto_1

    .line 208
    .restart local v1       #showTime:Z
    .restart local v4       #strReturn:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, strBegin:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, strEnd:Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/android/phone/widget/CalendarEventPanel;->showDate(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, v6}, Lcom/android/phone/widget/CalendarEventPanel;->getDateString(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4, v6}, Lcom/android/phone/widget/CalendarEventPanel;->getDateString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    goto/16 :goto_0

    .line 219
    .end local v2           #strBegin:Ljava/lang/String;
    .end local v3           #strEnd:Ljava/lang/String;
    :cond_4
    invoke-static {p1, p2, v5}, Lcom/android/phone/widget/CalendarEventPanel;->getDateString(JZ)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getDateString(JZ)Ljava/lang/String;
    .locals 3
    .parameter "begin"
    .parameter "fully_date_format"

    .prologue
    .line 244
    const-string v0, ""

    .line 245
    .local v0, date_format:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 246
    sget-object v2, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "EE, MMM d, yyyy"

    sput-object v2, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format:Ljava/lang/String;

    .line 249
    :cond_0
    sget-object v0, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format:Ljava/lang/String;

    .line 256
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 257
    .local v1, resultDateFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 251
    .end local v1           #resultDateFormat:Ljava/lang/CharSequence;
    :cond_1
    sget-object v2, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format_short:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    const-string v2, "EE, MMM d"

    sput-object v2, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format_short:Ljava/lang/String;

    .line 254
    :cond_2
    sget-object v0, Lcom/android/phone/widget/CalendarEventPanel;->system_date_format_short:Ljava/lang/String;

    goto :goto_0
.end method

.method private initBackground()V
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/phone/widget/CalendarEventPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "listview_app_background"

    const-string v4, "color"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/widget/CalendarEventPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 76
    .local v0, color:I
    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->setBackgroundColor(I)V

    .line 78
    .end local v0           #color:I
    :cond_0
    return-void
.end method

.method private setDateTime(JJ)V
    .locals 10
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDate:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v5, 0x1

    .line 154
    .local v5, flags:I
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/widget/CalendarEventPanel;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, when_1:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTime:Landroid/widget/TextView;

    const-string v1, "%s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v5, 0x10

    .line 158
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/widget/CalendarEventPanel;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, when_2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDate:Landroid/widget/TextView;

    const-string v1, "%s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v7, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "description"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescription:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescriptionTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescriptionTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescription:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescription:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocationTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocationTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocation:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private static showDate(JJ)Z
    .locals 9
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    .line 225
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 226
    .local v0, beginTime:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 228
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 229
    .local v1, endTime:Landroid/text/format/Time;
    invoke-virtual {v1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 231
    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 232
    .local v2, julianDayBegin:I
    iget-wide v5, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    .line 234
    .local v3, julianDayEnd:I
    sub-long v5, p2, p0

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v4

    .line 236
    :cond_1
    if-ne v2, v3, :cond_0

    .line 239
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 8

    .prologue
    .line 114
    iget-object v7, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    if-eqz v7, :cond_0

    .line 115
    iget-object v7, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, location:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, description:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getBegin()J

    move-result-wide v0

    .line 119
    .local v0, begin:J
    iget-object v7, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getEnd()J

    move-result-wide v3

    .line 127
    .local v3, end:J
    invoke-direct {p0, v6}, Lcom/android/phone/widget/CalendarEventPanel;->setTitle(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/phone/widget/CalendarEventPanel;->setDateTime(JJ)V

    .line 129
    invoke-direct {p0, v5}, Lcom/android/phone/widget/CalendarEventPanel;->setLocation(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v2}, Lcom/android/phone/widget/CalendarEventPanel;->setDescription(Ljava/lang/String;)V

    .line 132
    .end local v0           #begin:J
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #end:J
    .end local v5           #location:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->setVisibility(I)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mHidden:Z

    .line 111
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTitle:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mTime:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDate:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocationTxt:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescriptionTxt:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mLocation:Landroid/view/View;

    .line 68
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mDescription:Landroid/view/View;

    .line 69
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 70
    return-void
.end method

.method public setEvent(Lcom/htc/util/calendar/EventInstance;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    .line 83
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    if-eqz v0, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mHidden:Z

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->setVisibility(I)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/widget/CalendarEventPanel;->update()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/CalendarEventPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/phone/widget/CalendarEventPanel;->mEvent:Lcom/htc/util/calendar/EventInstance;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/phone/widget/CalendarEventPanel;->setVisibility(I)V

    .line 100
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/phone/widget/CalendarEventPanel;->scrollTo(II)V

    .line 101
    iput-boolean v1, p0, Lcom/android/phone/widget/CalendarEventPanel;->mHidden:Z

    .line 102
    return-void
.end method
