.class public Lcom/htc/android/mail/MailAlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "MailAlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final DATE_TYPE:I = 0x1

.field public static final FROM_TYPE:I = 0x4

.field public static final PRIORITY_TYPE:I = 0x2

.field public static final SIZE_TYPE:I = 0x5

.field public static final SUBJECT_TYPE:I = 0x3

.field public static final UNKNOWN_TYPE:I


# instance fields
.field final TAG:Ljava/lang/String;

.field private bExtAdapter:Z

.field baseTime:J

.field final dayUnitLong:J

.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field private mContext:Landroid/content/Context;

.field protected mDataCursor:Landroid/database/Cursor;

.field private mNowtime:Landroid/text/format/Time;

.field private mRevertOrder:Z

.field private mType:I

.field tDur:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;Z)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"
    .parameter "extAdapter"

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 46
    const-string v1, "MailAlphabetIndexer"

    iput-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->TAG:Ljava/lang/String;

    .line 66
    iput v3, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    .line 92
    iput v3, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mType:I

    .line 94
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    .line 99
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->dayUnitLong:J

    .line 102
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->bExtAdapter:Z

    .line 108
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mNowtime:Landroid/text/format/Time;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    .line 242
    iput-object p2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 243
    iput p3, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    .line 244
    iput-object p4, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 245
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    .line 246
    iget v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 249
    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const-string v2, "#"

    aput-object v2, v1, v0

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 254
    if-eqz p2, :cond_2

    .line 255
    invoke-interface {p2, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 258
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 259
    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 262
    iput-boolean p5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->bExtAdapter:Z

    .line 263
    return-void
.end method

.method private calDateArray()V
    .locals 31

    .prologue
    .line 117
    const-wide/16 v22, 0x0

    .line 118
    .local v22, tStart:J
    const-wide/16 v20, 0x0

    .line 119
    .local v20, tEnd:J
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    .line 121
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 122
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 123
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_0

    const-string v25, "MailAlphabetIndexer"

    const-string v26, "mDataCursor null>"

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 127
    .local v24, timezone:Ljava/util/TimeZone;
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    .line 128
    .local v9, offset:I
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_2

    const-string v25, "MailAlphabetIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "calDateArray>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 131
    const-wide/32 v25, 0x5265c00

    div-long v22, v22, v25

    .line 132
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_3

    .line 133
    const-wide/32 v25, 0x5265c00

    mul-long v25, v25, v22

    int-to-long v0, v9

    move-wide/from16 v27, v0

    sub-long v16, v25, v27

    .line 134
    .local v16, t1:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v16

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailAlphabetIndexer;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, s1:Ljava/lang/String;
    const-string v25, "MailAlphabetIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Start>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v10           #s1:Ljava/lang/String;
    .end local v16           #t1:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 140
    const-wide/32 v25, 0x5265c00

    div-long v20, v20, v25

    .line 141
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_4

    .line 142
    const-wide/32 v25, 0x5265c00

    mul-long v25, v25, v20

    int-to-long v0, v9

    move-wide/from16 v27, v0

    sub-long v18, v25, v27

    .line 143
    .local v18, t2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v18

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailAlphabetIndexer;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, s2:Ljava/lang/String;
    const-string v25, "MailAlphabetIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "End>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v11           #s2:Ljava/lang/String;
    .end local v18           #t2:J
    :cond_4
    sub-long v25, v22, v20

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    .line 149
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_5

    const-string v25, "MailAlphabetIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "calDateArray<"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_5
    const-wide/32 v25, 0x5265c00

    mul-long v25, v25, v22

    int-to-long v0, v9

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    .line 151
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_6

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailAlphabetIndexer;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 153
    .local v12, s3:Ljava/lang/String;
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_6

    const-string v25, "MailAlphabetIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "baseTime>>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v12           #s3:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/Util;->getBladeDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, currentFormat:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 158
    .local v5, cal:Ljava/util/Calendar;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_9

    .line 159
    const-wide/16 v14, 0x0

    .line 160
    .local v14, t:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 161
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    move-wide/from16 v25, v0

    int-to-long v0, v8

    move-wide/from16 v27, v0

    const-wide/32 v29, 0x5265c00

    mul-long v27, v27, v29

    sub-long v14, v25, v27

    .line 165
    :goto_2
    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v25, v8

    .line 167
    sget-boolean v25, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v25, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/htc/android/mail/MailAlphabetIndexer;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, s5:Ljava/lang/String;
    const-string v25, "MailAlphabetIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mAlphabetArray>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v27, v27, v8

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v13           #s5:Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 163
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    move-wide/from16 v25, v0

    int-to-long v0, v8

    move-wide/from16 v27, v0

    const-wide/32 v29, 0x5265c00

    mul-long v27, v27, v29

    add-long v14, v25, v27

    goto :goto_2

    .line 172
    .end local v14           #t:J
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->tDur:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    goto/16 :goto_0
.end method

.method private getPriorityArray()V
    .locals 8

    .prologue
    const v7, 0x7f0b001a

    const v6, 0x7f0b0019

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 198
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 200
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 201
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 204
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 205
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method private getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 3
    .parameter "c"
    .parameter "millis"
    .parameter "format24"

    .prologue
    .line 110
    const-string v0, "M/d k:m:s"

    .line 111
    .local v0, format:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mNowtime:Landroid/text/format/Time;

    invoke-virtual {v1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 112
    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mNowtime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getSizeArray()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 177
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 179
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 180
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 181
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 182
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 183
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 187
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 188
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 189
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 190
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 191
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, -0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 19
    .parameter "sectionIndex"

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 327
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 328
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 330
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 331
    :cond_0
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_1

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "return 0 a1>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    const/4 v10, 0x0

    .line 468
    .end local v2           #alphaMap:Landroid/util/SparseIntArray;
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v10

    .line 321
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getPositionForSectionByDay(I)I

    move-result v10

    goto :goto_0

    .line 323
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getPositionForSectionByNumber(I)I

    move-result v10

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getPositionForSectionByPriority(I)I

    move-result v10

    goto :goto_0

    .line 336
    .restart local v2       #alphaMap:Landroid/util/SparseIntArray;
    .restart local v5       #cursor:Landroid/database/Cursor;
    :cond_3
    if-gtz p1, :cond_5

    .line 337
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_4

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "return 0 a2>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 340
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    move/from16 v16, v0

    add-int/lit8 p1, v16, -0x1

    .line 344
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 346
    .local v13, savedCursorPos:I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 347
    .local v3, count:I
    const/4 v14, 0x0

    .line 348
    .local v14, start:I
    move v7, v3

    .line 350
    .local v7, end:I
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_7

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getPositionForSection>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 353
    .local v9, letter:C
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    .line 354
    .local v15, targetLetter:Ljava/lang/String;
    move v8, v9

    .line 355
    .local v8, key:I
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_8

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "letter>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_8
    const/high16 v16, -0x8000

    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .local v10, pos:I
    move/from16 v0, v16

    if-eq v0, v10, :cond_b

    .line 361
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_9

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pos>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/high16 v18, -0x8000

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_9
    if-gez v10, :cond_12

    .line 363
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_a

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pos a>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_a
    neg-int v10, v10

    .line 365
    move v7, v10

    .line 374
    :cond_b
    if-lez p1, :cond_d

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    add-int/lit8 v17, p1, -0x1

    invoke-interface/range {v16 .. v17}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 377
    .local v11, prevLetter:I
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_c

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "prevLetter>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_c
    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 379
    .local v12, prevLetterPos:I
    const/high16 v16, -0x8000

    move/from16 v0, v16

    if-eq v12, v0, :cond_d

    .line 380
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 386
    .end local v11           #prevLetter:I
    .end local v12           #prevLetterPos:I
    :cond_d
    add-int v16, v7, v14

    div-int/lit8 v10, v16, 0x2

    .line 387
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_e

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pos z>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_e
    :goto_1
    if-ge v10, v7, :cond_10

    .line 390
    invoke-interface {v5, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, curName:Ljava/lang/String;
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_f

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "curName>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_f
    if-nez v4, :cond_14

    .line 394
    if-nez v10, :cond_13

    .line 395
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_10

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "pos 0 >"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v4           #curName:Ljava/lang/String;
    :cond_10
    :goto_2
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_11

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pot>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_11
    invoke-virtual {v2, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 368
    :cond_12
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_2

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pos b>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    .restart local v4       #curName:Ljava/lang/String;
    :cond_13
    add-int/lit8 v10, v10, -0x1

    .line 399
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_e

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pos -->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/htc/android/mail/MailAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 404
    .local v6, diff:I
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_15

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "diff>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1d

    .line 406
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_16

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "set revert>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_16
    if-gez v6, :cond_1b

    .line 408
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_17

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "set revert>a"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_17
    const/4 v6, 0x1

    .line 424
    :goto_3
    if-eqz v6, :cond_25

    .line 436
    if-gez v6, :cond_22

    .line 437
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_18

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "diff < 0"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_18
    add-int/lit8 v14, v10, 0x1

    .line 439
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_19

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "diff c>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_19
    if-lt v14, v3, :cond_24

    .line 441
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_1a

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "end 3>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_1a
    move v10, v3

    .line 443
    goto/16 :goto_2

    .line 411
    :cond_1b
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_1c

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "set revert>a"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_1c
    const/4 v6, -0x1

    goto :goto_3

    .line 415
    :cond_1d
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_1e

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "set revert>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1e
    if-gez v6, :cond_20

    .line 417
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_1f

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "set revert>a"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_1f
    const/4 v6, -0x1

    goto/16 :goto_3

    .line 420
    :cond_20
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_21

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "set revert>a"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_21
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 446
    :cond_22
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_23

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "diff > 0"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_23
    move v7, v10

    .line 462
    :cond_24
    :goto_4
    add-int v16, v14, v7

    div-int/lit8 v10, v16, 0x2

    .line 463
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_e

    const-string v16, "MailAlphabetIndexer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pos zz>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    :cond_25
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_26

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "diff b>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_26
    if-ne v14, v10, :cond_27

    .line 453
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_10

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "this is it>"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 458
    :cond_27
    sget-boolean v16, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v16, :cond_28

    const-string v16, "MailAlphabetIndexer"

    const-string v17, "need to >"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_28
    move v7, v10

    goto :goto_4

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPositionForSectionByDay(I)I
    .locals 25
    .parameter "sectionIndex"

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 830
    .local v3, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 831
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 832
    :cond_0
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_1

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "day return 0 a3>"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_1
    const/4 v13, 0x0

    .line 938
    :cond_2
    :goto_0
    return v13

    .line 837
    :cond_3
    if-gtz p1, :cond_5

    .line 838
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "day return 0 a4>"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 841
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    move/from16 v19, v0

    add-int/lit8 p1, v19, -0x1

    .line 845
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 847
    .local v14, savedCursorPos:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 848
    .local v4, count:I
    const/4 v15, 0x0

    .line 849
    .local v15, start:I
    move v9, v4

    .line 851
    .local v9, end:I
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_7

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getPositionForSectionByDay>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_7
    const-wide/16 v11, 0x0

    .line 854
    .local v11, letter:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 855
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    move-wide/from16 v19, v0

    add-int/lit8 v21, p1, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/32 v23, 0x5265c00

    mul-long v21, v21, v23

    sub-long v19, v19, v21

    const-wide/16 v21, 0x1

    sub-long v11, v19, v21

    .line 859
    :goto_1
    move-wide/from16 v16, v11

    .line 860
    .local v16, targetLetter:J
    long-to-int v10, v11

    .line 862
    .local v10, key:I
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_8

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "letter>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_8
    const/high16 v19, -0x8000

    const/high16 v20, -0x8000

    move/from16 v0, v20

    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .local v13, pos:I
    move/from16 v0, v19

    if-eq v0, v13, :cond_b

    .line 868
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_9

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pos>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/high16 v21, -0x8000

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_9
    if-gez v13, :cond_18

    .line 870
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_a

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pos a>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_a
    neg-int v13, v13

    .line 872
    move v9, v13

    .line 880
    :cond_b
    add-int v19, v9, v15

    div-int/lit8 v13, v19, 0x2

    .line 881
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_c

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pos z>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_c
    :goto_2
    if-ge v13, v9, :cond_15

    .line 884
    invoke-interface {v7, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 886
    .local v5, curName:J
    const-string v19, "_subject"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 887
    .local v18, tname:Ljava/lang/String;
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_d

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "curName>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_d
    const/4 v8, 0x0

    .line 889
    .local v8, diff:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 890
    cmp-long v19, v5, v16

    if-nez v19, :cond_e

    .line 891
    const/4 v8, 0x0

    .line 892
    :cond_e
    cmp-long v19, v5, v16

    if-gez v19, :cond_f

    .line 893
    const/4 v8, 0x1

    .line 894
    :cond_f
    cmp-long v19, v5, v16

    if-lez v19, :cond_10

    .line 895
    const/4 v8, -0x1

    .line 904
    :cond_10
    :goto_3
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_11

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "diffPirority>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_11
    if-eqz v8, :cond_1f

    .line 906
    if-gez v8, :cond_1c

    .line 907
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_12

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "diff < 0"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_12
    add-int/lit8 v15, v13, 0x1

    .line 909
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_13

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "diff c>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_13
    if-lt v15, v4, :cond_1e

    .line 911
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_14

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "end 3>"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_14
    move v13, v4

    .line 935
    .end local v5           #curName:J
    .end local v8           #diff:I
    .end local v18           #tname:Ljava/lang/String;
    :cond_15
    :goto_4
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_16

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pot>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_16
    invoke-virtual {v3, v10, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    invoke-interface {v7, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 857
    .end local v10           #key:I
    .end local v13           #pos:I
    .end local v16           #targetLetter:J
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->baseTime:J

    move-wide/from16 v19, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/32 v23, 0x5265c00

    mul-long v21, v21, v23

    add-long v11, v19, v21

    goto/16 :goto_1

    .line 875
    .restart local v10       #key:I
    .restart local v13       #pos:I
    .restart local v16       #targetLetter:J
    :cond_18
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_2

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pos b>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    .restart local v5       #curName:J
    .restart local v8       #diff:I
    .restart local v18       #tname:Ljava/lang/String;
    :cond_19
    cmp-long v19, v5, v16

    if-nez v19, :cond_1a

    .line 898
    const/4 v8, 0x0

    .line 899
    :cond_1a
    cmp-long v19, v5, v16

    if-gez v19, :cond_1b

    .line 900
    const/4 v8, -0x1

    .line 901
    :cond_1b
    cmp-long v19, v5, v16

    if-lez v19, :cond_10

    .line 902
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 916
    :cond_1c
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_1d

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "diff > 0"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_1d
    move v9, v13

    .line 932
    :cond_1e
    :goto_5
    add-int v19, v15, v9

    div-int/lit8 v13, v19, 0x2

    .line 933
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_c

    const-string v19, "MailAlphabetIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pos zz>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 920
    :cond_1f
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_20

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "diff b>"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_20
    if-ne v15, v13, :cond_21

    .line 923
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_15

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "this is it>"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 928
    :cond_21
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v19, :cond_22

    const-string v19, "MailAlphabetIndexer"

    const-string v20, "need to >"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_22
    move v9, v13

    goto :goto_5
.end method

.method public getPositionForSectionByNumber(I)I
    .locals 17
    .parameter "sectionIndex"

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 473
    .local v1, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 474
    .local v4, cursor:Landroid/database/Cursor;
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getPositionForSectionByNumber>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v14, :cond_4

    .line 476
    :cond_1
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "return 0 a3>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_2
    const/4 v9, 0x0

    .line 658
    :cond_3
    :goto_0
    return v9

    .line 481
    :cond_4
    if-gtz p1, :cond_6

    .line 482
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_5

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "return 0 a4>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 485
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_7

    .line 486
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v14, -0x1

    .line 489
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 491
    .local v10, savedCursorPos:I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 492
    .local v2, count:I
    const/4 v11, 0x0

    .line 493
    .local v11, start:I
    move v6, v2

    .line 495
    .local v6, end:I
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_8

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getPositionForSectionByNumber>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_8
    const/4 v8, 0x0

    .line 498
    .local v8, letter:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    if-eqz v14, :cond_11

    .line 499
    packed-switch p1, :pswitch_data_0

    .line 545
    :goto_1
    move v12, v8

    .line 546
    .local v12, targetLetter:I
    move v7, v8

    .line 548
    .local v7, key:I
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_9

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "letter>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_9
    const/high16 v14, -0x8000

    const/high16 v15, -0x8000

    invoke-virtual {v1, v7, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .local v9, pos:I
    if-eq v14, v9, :cond_c

    .line 554
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_a

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/high16 v16, -0x8000

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_a
    if-gez v9, :cond_12

    .line 556
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_b

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos a>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_b
    neg-int v9, v9

    .line 558
    move v6, v9

    .line 579
    :cond_c
    add-int v14, v6, v11

    div-int/lit8 v9, v14, 0x2

    .line 580
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_d

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos z>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_d
    :goto_2
    if-ge v9, v6, :cond_f

    .line 583
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 584
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 585
    .local v3, curName:I
    const-string v14, "_subject"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 586
    .local v13, tname:Ljava/lang/String;
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_e

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "curName>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_e
    if-nez v3, :cond_14

    .line 588
    if-nez v9, :cond_13

    .line 589
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_f

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "pos 0 >"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .end local v3           #curName:I
    .end local v13           #tname:Ljava/lang/String;
    :cond_f
    :goto_3
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_10

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pot>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_10
    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    invoke-interface {v4, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 501
    .end local v7           #key:I
    .end local v9           #pos:I
    .end local v12           #targetLetter:I
    :pswitch_0
    const/high16 v8, 0x4000

    .line 502
    goto/16 :goto_1

    .line 504
    :pswitch_1
    const/high16 v8, 0x50

    .line 505
    goto/16 :goto_1

    .line 507
    :pswitch_2
    const/high16 v8, 0x10

    .line 508
    goto/16 :goto_1

    .line 510
    :pswitch_3
    const v8, 0x7d000

    .line 511
    goto/16 :goto_1

    .line 513
    :pswitch_4
    const v8, 0x19000

    .line 514
    goto/16 :goto_1

    .line 516
    :pswitch_5
    const/16 v8, 0x6400

    .line 517
    goto/16 :goto_1

    .line 519
    :pswitch_6
    const/16 v8, 0x2800

    goto/16 :goto_1

    .line 523
    :cond_11
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 525
    :pswitch_7
    const/4 v8, 0x0

    .line 526
    goto/16 :goto_1

    .line 528
    :pswitch_8
    const/16 v8, 0x2800

    .line 529
    goto/16 :goto_1

    .line 531
    :pswitch_9
    const/16 v8, 0x6400

    .line 532
    goto/16 :goto_1

    .line 534
    :pswitch_a
    const v8, 0x19000

    .line 535
    goto/16 :goto_1

    .line 537
    :pswitch_b
    const v8, 0x7d000

    .line 539
    :pswitch_c
    const/high16 v8, 0x10

    .line 541
    :pswitch_d
    const/high16 v8, 0x50

    goto/16 :goto_1

    .line 561
    .restart local v7       #key:I
    .restart local v9       #pos:I
    .restart local v12       #targetLetter:I
    :cond_12
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos b>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    .restart local v3       #curName:I
    .restart local v13       #tname:Ljava/lang/String;
    :cond_13
    add-int/lit8 v9, v9, -0x1

    .line 593
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_d

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos -->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 597
    :cond_14
    const/4 v5, 0x0

    .line 598
    .local v5, diff:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    if-eqz v14, :cond_1c

    .line 599
    if-ne v3, v12, :cond_15

    .line 600
    const/4 v5, 0x0

    .line 601
    :cond_15
    if-ge v3, v12, :cond_16

    .line 602
    const/4 v5, 0x1

    .line 603
    :cond_16
    if-le v3, v12, :cond_17

    .line 604
    const/4 v5, -0x1

    .line 613
    :cond_17
    :goto_4
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_18

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "diffNumber>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_18
    if-eqz v5, :cond_22

    .line 626
    if-gez v5, :cond_1f

    .line 627
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_19

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "diff < 0"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_19
    add-int/lit8 v11, v9, 0x1

    .line 629
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_1a

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "diff c>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_1a
    if-lt v11, v2, :cond_21

    .line 631
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_1b

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "end 3>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_1b
    move v9, v2

    .line 633
    goto/16 :goto_3

    .line 606
    :cond_1c
    if-ne v3, v12, :cond_1d

    .line 607
    const/4 v5, 0x0

    .line 608
    :cond_1d
    if-ge v3, v12, :cond_1e

    .line 609
    const/4 v5, -0x1

    .line 610
    :cond_1e
    if-le v3, v12, :cond_17

    .line 611
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 636
    :cond_1f
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_20

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "diff > 0"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_20
    move v6, v9

    .line 652
    :cond_21
    :goto_5
    add-int v14, v11, v6

    div-int/lit8 v9, v14, 0x2

    .line 653
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_d

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos zz>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 640
    :cond_22
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_23

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "diff b>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_23
    if-ne v11, v9, :cond_24

    .line 643
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_f

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "this is it>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 648
    :cond_24
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_25

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "need to >"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_25
    move v6, v9

    goto :goto_5

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 523
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getPositionForSectionByPriority(I)I
    .locals 17
    .parameter "sectionIndex"

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 663
    .local v1, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 664
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v14, :cond_3

    .line 665
    :cond_0
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "priority return 0 a3>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_1
    const/4 v9, 0x0

    .line 825
    :cond_2
    :goto_0
    return v9

    .line 670
    :cond_3
    if-gtz p1, :cond_5

    .line 671
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_4

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "priority return 0 a4>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 674
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_6

    .line 675
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v14, -0x1

    .line 678
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 680
    .local v10, savedCursorPos:I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 681
    .local v2, count:I
    const/4 v11, 0x0

    .line 682
    .local v11, start:I
    move v6, v2

    .line 684
    .local v6, end:I
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_7

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getPositionForSectionByPriority>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_7
    const/4 v8, 0x0

    .line 687
    .local v8, letter:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    if-eqz v14, :cond_17

    .line 688
    packed-switch p1, :pswitch_data_0

    .line 712
    :goto_1
    move v12, v8

    .line 713
    .local v12, targetLetter:I
    move v7, v8

    .line 715
    .local v7, key:I
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_8

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "letter>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_8
    const/high16 v14, -0x8000

    const/high16 v15, -0x8000

    invoke-virtual {v1, v7, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .local v9, pos:I
    if-eq v14, v9, :cond_b

    .line 721
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_9

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/high16 v16, -0x8000

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_9
    if-gez v9, :cond_18

    .line 723
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_a

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos a>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_a
    neg-int v9, v9

    .line 725
    move v6, v9

    .line 746
    :cond_b
    add-int v14, v6, v11

    div-int/lit8 v9, v14, 0x2

    .line 747
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_c

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos z>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_c
    :goto_2
    if-ge v9, v6, :cond_15

    .line 750
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 751
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 752
    .local v3, curName:I
    const-string v14, "_subject"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 753
    .local v13, tname:Ljava/lang/String;
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_d

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "curName>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_d
    const/4 v5, 0x0

    .line 765
    .local v5, diff:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    if-eqz v14, :cond_19

    .line 766
    if-ne v3, v12, :cond_e

    .line 767
    const/4 v5, 0x0

    .line 768
    :cond_e
    if-ge v3, v12, :cond_f

    .line 769
    const/4 v5, 0x1

    .line 770
    :cond_f
    if-le v3, v12, :cond_10

    .line 771
    const/4 v5, -0x1

    .line 780
    :cond_10
    :goto_3
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_11

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "diffPirority>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_11
    if-eqz v5, :cond_1f

    .line 793
    if-gez v5, :cond_1c

    .line 794
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_12

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "diff < 0"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_12
    add-int/lit8 v11, v9, 0x1

    .line 796
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_13

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "diff c>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_13
    if-lt v11, v2, :cond_1e

    .line 798
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_14

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "end 3>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_14
    move v9, v2

    .line 822
    .end local v3           #curName:I
    .end local v5           #diff:I
    .end local v13           #tname:Ljava/lang/String;
    :cond_15
    :goto_4
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_16

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pot>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_16
    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    invoke-interface {v4, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 690
    .end local v7           #key:I
    .end local v9           #pos:I
    .end local v12           #targetLetter:I
    :pswitch_0
    const/4 v8, 0x2

    .line 691
    goto/16 :goto_1

    .line 693
    :pswitch_1
    const/4 v8, 0x1

    .line 694
    goto/16 :goto_1

    .line 696
    :pswitch_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 700
    :cond_17
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 702
    :pswitch_3
    const/4 v8, 0x0

    .line 703
    goto/16 :goto_1

    .line 705
    :pswitch_4
    const/4 v8, 0x1

    .line 706
    goto/16 :goto_1

    .line 708
    :pswitch_5
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 728
    .restart local v7       #key:I
    .restart local v9       #pos:I
    .restart local v12       #targetLetter:I
    :cond_18
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos b>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 773
    .restart local v3       #curName:I
    .restart local v5       #diff:I
    .restart local v13       #tname:Ljava/lang/String;
    :cond_19
    if-ne v3, v12, :cond_1a

    .line 774
    const/4 v5, 0x0

    .line 775
    :cond_1a
    if-ge v3, v12, :cond_1b

    .line 776
    const/4 v5, -0x1

    .line 777
    :cond_1b
    if-le v3, v12, :cond_10

    .line 778
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 803
    :cond_1c
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_1d

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "diff > 0"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_1d
    move v6, v9

    .line 819
    :cond_1e
    :goto_5
    add-int v14, v11, v6

    div-int/lit8 v9, v14, 0x2

    .line 820
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_c

    const-string v14, "MailAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos zz>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 807
    :cond_1f
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_20

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "diff b>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_20
    if-ne v11, v9, :cond_21

    .line 810
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_15

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "this is it>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 815
    :cond_21
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v14, :cond_22

    const-string v14, "MailAlphabetIndexer"

    const-string v15, "need to >"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_22
    move v6, v9

    goto :goto_5

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 700
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 945
    iget-object v5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 946
    .local v3, savedCursorPos:I
    iget-object v5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 947
    iget-object v5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 948
    iget-object v5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, curName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 952
    iget-object v5, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 953
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/htc/android/mail/MailAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 958
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_1
    return v1

    .line 951
    .restart local v1       #i:I
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 270
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailAlphabetIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSections>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 966
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 967
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 968
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 975
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 976
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 977
    return-void
.end method

.method public setCompareType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 210
    iput p1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mType:I

    .line 211
    iget v1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return-void

    .line 214
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailAlphabetIndexer;->calDateArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailAlphabetIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/mail/MailAlphabetIndexer;->getSizeArray()V

    goto :goto_0

    .line 224
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/android/mail/MailAlphabetIndexer;->getPriorityArray()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 293
    if-eqz p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 297
    return-void
.end method

.method public setRevertOrder()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailAlphabetIndexer;->mRevertOrder:Z

    .line 106
    return-void
.end method
