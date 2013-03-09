.class public Lcom/android/phone/CityIdInfo;
.super Lcom/htc/util/phone/CityIdInfo;
.source "CityIdInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CityIdInfo$CityIdTimerManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static m_timer:Lcom/android/phone/CityIdInfo$CityIdTimerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/util/phone/CityIdInfo;-><init>()V

    .line 34
    return-void
.end method

.method static cancelTimer()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/phone/CityIdInfo;->m_timer:Lcom/android/phone/CityIdInfo$CityIdTimerManager;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/phone/CityIdInfo;->m_timer:Lcom/android/phone/CityIdInfo$CityIdTimerManager;

    invoke-virtual {v0}, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->cancelTimer()V

    .line 96
    :cond_0
    return-void
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;
    .locals 3
    .parameter "context"
    .parameter "o"
    .parameter "isSystemProvided"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_3

    .line 108
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p1
    iget-object v1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 112
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-nez p0, :cond_4

    .line 113
    :cond_1
    const/4 v0, 0x0

    .line 122
    :cond_2
    :goto_1
    return-object v0

    .line 109
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 110
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 115
    .end local p1
    :cond_4
    sget-object v2, Lcom/android/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CityIdInfo;

    .line 116
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lcom/android/phone/CityIdInfo;

    .end local v0           #cidInfo:Lcom/android/phone/CityIdInfo;
    invoke-direct {v0}, Lcom/android/phone/CityIdInfo;-><init>()V

    .line 119
    .restart local v0       #cidInfo:Lcom/android/phone/CityIdInfo;
    sget-object v2, Lcom/android/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p0, v2, p2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public static getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, oInfo:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 163
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 167
    .end local v1           #oInfo:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 164
    .restart local v1       #oInfo:Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_0

    .line 165
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #oInfo:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method public static getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;
    .locals 2
    .parameter "info"

    .prologue
    .line 132
    if-eqz p0, :cond_0

    .line 134
    sget-object v1, Lcom/android/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/phone/CityIdInfo;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/android/phone/CityIdInfo;

    .line 138
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCityIdInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CityIdInfo;
    .locals 1
    .parameter "conn"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/phone/CityIdInfo;->getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    return-object v0
.end method

.method public static handleAlternatingDisplay(Lcom/android/internal/telephony/Phone;J)Z
    .locals 2
    .parameter "phone"
    .parameter "timeElapsed"

    .prologue
    .line 281
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/CityIdInfo;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v0

    .line 282
    .local v0, bAnyActive:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/CityIdInfo;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 283
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/CityIdInfo;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 284
    return v0
.end method

.method static handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z
    .locals 3
    .parameter "call"
    .parameter "timeElapsed"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CityIdInfo;->getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 291
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v1

    .line 292
    .local v1, cid:Lcom/android/phone/CityIdInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/phone/CityIdInfo;->implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V

    .line 295
    const/4 v2, 0x1

    .line 297
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setCityIdDisplay(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 6
    .parameter "tv"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 186
    if-nez p0, :cond_0

    .line 187
    const-string v3, "com.htc.util.phone.CityIdInfo"

    const-string v4, "no TextView is assigned!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v1, 0x4

    .line 191
    .local v1, nDisplayCityId:I
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 192
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-eqz v0, :cond_1

    .line 195
    iput-boolean v4, v0, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 196
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 197
    iput-boolean v4, v0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 199
    iget-boolean v3, v0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, strDisplay:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v1, 0x0

    .line 211
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setCityIdDisplayOneLine(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;Z)V
    .locals 3
    .parameter "tv"
    .parameter "info"
    .parameter "isIncoming"

    .prologue
    .line 218
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 219
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v0, :cond_0

    .line 223
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 229
    :cond_0
    if-eqz v0, :cond_1

    .line 231
    iput-object p0, v0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 232
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/phone/CityIdInfo;->implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V

    .line 233
    invoke-static {}, Lcom/android/phone/CityIdInfo;->startTimer()V

    .line 235
    :cond_1
    return-void
.end method

.method private shouldDoLookup(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "strNumber"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method static startTimer()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/phone/CityIdInfo;->m_timer:Lcom/android/phone/CityIdInfo$CityIdTimerManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/phone/CityIdInfo$CityIdTimerManager;

    invoke-direct {v0}, Lcom/android/phone/CityIdInfo$CityIdTimerManager;-><init>()V

    sput-object v0, Lcom/android/phone/CityIdInfo;->m_timer:Lcom/android/phone/CityIdInfo$CityIdTimerManager;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/phone/CityIdInfo;->m_timer:Lcom/android/phone/CityIdInfo$CityIdTimerManager;

    invoke-virtual {v0}, Lcom/android/phone/CityIdInfo$CityIdTimerManager;->startTimer()V

    .line 90
    return-void
.end method


# virtual methods
.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"

    .prologue
    .line 301
    invoke-direct {p0, p2}, Lcom/android/phone/CityIdInfo;->shouldDoLookup(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-super {p0, p1, p2, p3}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    goto :goto_0
.end method

.method implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V
    .locals 7
    .parameter "info"
    .parameter "timeElapsed"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 239
    iput-boolean v3, p0, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 242
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-wide/16 v5, 0x6

    rem-long v5, p2, v5

    long-to-int v1, v5

    .line 254
    .local v1, nPhase:I
    const/4 v5, 0x3

    if-lt v1, v5, :cond_3

    move v0, v3

    .line 255
    .local v0, isPhaseDisplayCityId:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 257
    iget-boolean v5, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    if-nez v5, :cond_2

    .line 259
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, strDisplay:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 262
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iput-boolean v3, p0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 267
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2       #strDisplay:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iput-boolean v4, p0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    goto :goto_0

    .end local v0           #isPhaseDisplayCityId:Z
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_3
    move v0, v4

    .line 254
    goto :goto_1
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
