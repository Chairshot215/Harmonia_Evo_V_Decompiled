.class public Lcom/android/htccontacts/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

.field private mLabelRes:I

.field private mPresence:I

.field private mResPackage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 34
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 37
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 38
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 39
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;II)V
    .locals 4
    .parameter "presence"
    .parameter "status"
    .parameter "timestamp"
    .parameter "resPackage"
    .parameter "iconRes"
    .parameter "labelRes"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 34
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 37
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 38
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 39
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    .line 50
    iput p1, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 51
    iput-object p2, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 53
    iput-object p5, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 55
    iput p7, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 34
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 37
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 38
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 39
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 47
    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 113
    const-string v0, "mode"

    invoke-static {p1, v0, v3}, Lcom/android/htccontacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 114
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/android/htccontacts/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 115
    const-string v0, "status_ts"

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/htccontacts/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 116
    const-string v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/htccontacts/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 117
    const-string v0, "status_icon"

    invoke-static {p1, v0, v3}, Lcom/android/htccontacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 118
    const-string v0, "status_label"

    invoke-static {p1, v0, v3}, Lcom/android/htccontacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    .line 119
    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 194
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"
    .parameter "missingValue"

    .prologue
    .line 198
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .parameter "cursor"
    .parameter "columnName"
    .parameter "missingValue"

    .prologue
    .line 203
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 190
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNull(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 208
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 59
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 60
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 62
    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 64
    iput v2, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    .line 65
    return-void
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 183
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    .line 186
    .local v1, validIcon:Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    return-object v2

    .line 185
    .end local v1           #validIcon:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconRes()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    return v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    return v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    return-wide v0
.end method

.method public getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 152
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 154
    :cond_0
    iget-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v11, 0x1

    .line 155
    .local v11, validTimestamp:Z
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v10, 0x1

    .line 157
    .local v10, validLabel:Z
    :goto_1
    if-eqz v11, :cond_4

    iget-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v9

    .line 160
    .local v9, timeClause:Ljava/lang/CharSequence;
    :goto_2
    if-eqz v10, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 162
    .local v7, labelClause:Ljava/lang/CharSequence;
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v10, 0x1

    .line 164
    :goto_4
    if-eqz v11, :cond_7

    if-eqz v10, :cond_7

    .line 165
    const v0, 0x7f0a03b9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .end local v9           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    :goto_5
    return-object v9

    .line 154
    .end local v7           #labelClause:Ljava/lang/CharSequence;
    .end local v10           #validLabel:Z
    .end local v11           #validTimestamp:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 155
    .restart local v11       #validTimestamp:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 157
    .restart local v10       #validLabel:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 160
    .restart local v9       #timeClause:Ljava/lang/CharSequence;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 162
    .restart local v7       #labelClause:Ljava/lang/CharSequence;
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 168
    :cond_7
    if-eqz v10, :cond_8

    .line 169
    const v0, 0x7f0a03b8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 172
    :cond_8
    if-nez v11, :cond_1

    .line 175
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public possibleUpdate(I)V
    .locals 0
    .parameter "presence"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/htccontacts/util/DataStatus;->mPresence:I

    .line 69
    return-void
.end method

.method public possibleUpdate(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 92
    const-string v6, "status"

    invoke-static {p1, v6}, Lcom/android/htccontacts/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 93
    .local v0, hasStatus:Z
    :goto_0
    const-string v6, "status_ts"

    invoke-static {p1, v6}, Lcom/android/htccontacts/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 97
    .local v1, hasTimestamp:Z
    :goto_1
    if-nez v0, :cond_3

    .line 110
    :cond_0
    :goto_2
    return-void

    .end local v0           #hasStatus:Z
    .end local v1           #hasTimestamp:Z
    :cond_1
    move v0, v5

    .line 92
    goto :goto_0

    .restart local v0       #hasStatus:Z
    :cond_2
    move v1, v5

    .line 93
    goto :goto_1

    .line 98
    .restart local v1       #hasTimestamp:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/util/DataStatus;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_0

    .line 100
    :cond_4
    if-eqz v1, :cond_5

    .line 102
    const-string v4, "status_ts"

    const-wide/16 v5, -0x1

    invoke-static {p1, v4, v5, v6}, Lcom/android/htccontacts/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    .line 103
    .local v2, newTimestamp:J
    iget-wide v4, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 105
    iput-wide v2, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 109
    .end local v2           #newTimestamp:J
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method public possibleUpdate(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 3
    .parameter "status"
    .parameter "timestamp"
    .parameter "resPackage"
    .parameter "iconRes"
    .parameter "labelRes"

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 76
    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 78
    :cond_2
    iget-wide v0, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/android/htccontacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 80
    iput-wide p2, p0, Lcom/android/htccontacts/util/DataStatus;->mTimestamp:J

    .line 81
    iput-object p4, p0, Lcom/android/htccontacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 82
    iput p5, p0, Lcom/android/htccontacts/util/DataStatus;->mIconRes:I

    .line 83
    iput p6, p0, Lcom/android/htccontacts/util/DataStatus;->mLabelRes:I

    goto :goto_0
.end method
