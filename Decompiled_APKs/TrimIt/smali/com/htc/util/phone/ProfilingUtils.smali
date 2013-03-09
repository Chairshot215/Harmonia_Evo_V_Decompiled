.class public Lcom/htc/util/phone/ProfilingUtils;
.super Ljava/lang/Object;
.source "ProfilingUtils.java"


# static fields
.field public static final ACTION_FALSE:Ljava/lang/String; = "false"

.field public static final ACTION_TRUE:Ljava/lang/String; = "true"

.field public static final CATEGORY_SETTINS_RETRIEVE:Ljava/lang/String; = "settings_retrieve"

.field public static final CATEGORY_USER_ACTION:Ljava/lang/String; = "user_action"

#the value of this static final field might be set in the static constructor
.field public static final ENABLED:Z = false

.field public static final SETTINGS_OFF:Ljava/lang/String; = "off"

.field public static final SETTINGS_ON:Ljava/lang/String; = "on"

.field private static final TAG:Ljava/lang/String; = "ProfilingUtils"

.field private static final TEMP_KEY_ARRAY:[Ljava/lang/String;

.field private static final TEMP_VALUE_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v2, 0x4040

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/util/phone/ProfilingUtils;->ENABLED:Z

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/htc/util/phone/ProfilingUtils;->TEMP_KEY_ARRAY:[Ljava/lang/String;

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/htc/util/phone/ProfilingUtils;->TEMP_VALUE_STRING_ARRAY:[Ljava/lang/String;

    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method private static clear()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/htc/util/phone/ProfilingUtils;->TEMP_KEY_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/util/phone/ProfilingUtils;->clear([Ljava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/htc/util/phone/ProfilingUtils;->TEMP_VALUE_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/util/phone/ProfilingUtils;->clear([Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method private static clear([Ljava/lang/Object;)V
    .locals 3
    .parameter "array"

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    array-length v1, p0

    .line 173
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    const/4 v2, 0x0

    aput-object v2, p0, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public static userProfiling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    sget-object v1, Lcom/htc/util/phone/ProfilingUtils;->TEMP_KEY_ARRAY:[Ljava/lang/String;

    aput-object p0, v1, v2

    .line 105
    sget-object v1, Lcom/htc/util/phone/ProfilingUtils;->TEMP_VALUE_STRING_ARRAY:[Ljava/lang/String;

    aput-object p1, v1, v2

    .line 107
    sget-object v1, Lcom/htc/util/phone/ProfilingUtils;->TEMP_KEY_ARRAY:[Ljava/lang/String;

    sget-object v2, Lcom/htc/util/phone/ProfilingUtils;->TEMP_VALUE_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v1, v2, p2, p3}, Lcom/htc/util/phone/ProfilingUtils;->userProfiling([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 108
    invoke-static {}, Lcom/htc/util/phone/ProfilingUtils;->clear()V

    .line 109
    invoke-static {}, Lcom/htc/util/phone/ProfilingUtils;->clear()V

    goto :goto_0
.end method

.method public static userProfiling([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "keys"
    .parameter "values"
    .parameter "appid"
    .parameter "category"

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/htc/util/phone/ProfilingUtils;->valid([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 130
    .local v2, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string p3, "user_action"

    .line 133
    :cond_0
    invoke-virtual {v2, p2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    invoke-interface {v3, p3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 134
    array-length v1, p0

    .line 135
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 136
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 143
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 147
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 145
    :cond_2
    const-string v3, "ProfilingUtils"

    const-string v4, "Unable to profile. Incorrect input."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static valid([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, valid:Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 153
    array-length v1, p1

    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 156
    :cond_0
    const-string v1, "ProfilingUtils"

    const-string v2, "invalid size, keys size > values size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_1
    const-string v1, "ProfilingUtils"

    const-string v2, "invalid input. key or values is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
