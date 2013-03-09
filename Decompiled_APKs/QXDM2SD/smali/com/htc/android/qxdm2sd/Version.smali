.class public Lcom/htc/android/qxdm2sd/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QXDM2SD:Version"

.field private static mD:I = 0x0

.field private static final mGUIVER:Ljava/lang/String; = " - Ver. "

.field private static mM:I = 0x0

.field private static final mNATVER:Ljava/lang/String; = " N: "

.field private static mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    sput v0, Lcom/htc/android/qxdm2sd/Version;->mY:I

    sput v0, Lcom/htc/android/qxdm2sd/Version;->mM:I

    sput v0, Lcom/htc/android/qxdm2sd/Version;->mD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "gui_version"

    .prologue
    .line 67
    check-cast p0, Ljava/lang/String;

    .end local p0
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/htc/android/qxdm2sd/Version;->composeVersions(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "title"
    .parameter "gui_version"
    .parameter "native_version"

    .prologue
    .line 62
    check-cast p0, Ljava/lang/String;

    .end local p0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/android/qxdm2sd/Version;->composeVersions(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0
.end method

.method public static composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "gui_version"
    .parameter "native_versions"

    .prologue
    .line 57
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0, p1, p2}, Lcom/htc/android/qxdm2sd/Version;->composeVersions(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static composeVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "gui_version"

    .prologue
    .line 52
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/htc/android/qxdm2sd/Version;->composeVersions(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static composeVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "title"
    .parameter "gui_version"
    .parameter "native_version"

    .prologue
    .line 47
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/android/qxdm2sd/Version;->composeVersions(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0
.end method

.method public static composeVersions(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "title"
    .parameter "gui_version"
    .parameter "native_versions"

    .prologue
    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Ver. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, ret:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 38
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 39
    .local v4, s:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " N: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method static isExpired()Z
    .locals 6

    .prologue
    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 143
    .local v1, e:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    sget v3, Lcom/htc/android/qxdm2sd/Version;->mY:I

    sget v4, Lcom/htc/android/qxdm2sd/Version;->mM:I

    add-int/lit8 v4, v4, -0x1

    sget v5, Lcom/htc/android/qxdm2sd/Version;->mD:I

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 148
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gez v3, :cond_0

    .line 149
    const/4 v3, 0x0

    .line 156
    :goto_0
    return v3

    .line 151
    :catch_0
    move-exception v2

    .line 153
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "QXDM2SD:Version"

    const-string v4, "failed to compare:"

    invoke-static {v3, v4, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static isHardwareSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->getBoardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFromFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "max_length"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static setExpireDate(Ljava/lang/String;)V
    .locals 6
    .parameter "date"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 82
    const-string v3, "never"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mY:I

    .line 87
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mM:I

    .line 88
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mD:I

    .line 136
    .end local v0           #c:Ljava/util/Calendar;
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v3, 0x0

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mD:I

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mM:I

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mY:I

    .line 94
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, s:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 94
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_6

    .line 106
    :cond_3
    sput v4, Lcom/htc/android/qxdm2sd/Version;->mY:I

    .line 131
    .end local v0           #c:C
    :cond_4
    sget v3, Lcom/htc/android/qxdm2sd/Version;->mY:I

    if-lez v3, :cond_5

    sget v3, Lcom/htc/android/qxdm2sd/Version;->mM:I

    if-lez v3, :cond_5

    sget v3, Lcom/htc/android/qxdm2sd/Version;->mM:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_5

    sget v3, Lcom/htc/android/qxdm2sd/Version;->mD:I

    if-lez v3, :cond_5

    sget v3, Lcom/htc/android/qxdm2sd/Version;->mD:I

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    .line 133
    :cond_5
    sput v5, Lcom/htc/android/qxdm2sd/Version;->mD:I

    sput v5, Lcom/htc/android/qxdm2sd/Version;->mM:I

    sput v5, Lcom/htc/android/qxdm2sd/Version;->mY:I

    .line 134
    const-string v3, "QXDM2SD:Version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .restart local v0       #c:C
    :cond_6
    add-int/lit8 v3, v0, -0x30

    int-to-char v0, v3

    .line 112
    packed-switch v2, :pswitch_data_0

    .line 124
    sput v4, Lcom/htc/android/qxdm2sd/Version;->mY:I

    goto :goto_2

    .line 115
    :pswitch_0
    sget v3, Lcom/htc/android/qxdm2sd/Version;->mY:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mY:I

    goto :goto_2

    .line 118
    :pswitch_1
    sget v3, Lcom/htc/android/qxdm2sd/Version;->mM:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mM:I

    goto :goto_2

    .line 121
    :pswitch_2
    sget v3, Lcom/htc/android/qxdm2sd/Version;->mD:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    sput v3, Lcom/htc/android/qxdm2sd/Version;->mD:I

    goto :goto_2

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
