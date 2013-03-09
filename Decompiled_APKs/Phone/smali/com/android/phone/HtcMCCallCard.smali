.class public Lcom/android/phone/HtcMCCallCard;
.super Landroid/widget/LinearLayout;
.source "HtcMCCallCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcMCCallCard$CallGroup;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HtcMCCallCard"


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mIsInited:Z

.field private mIsMultiple:Z

.field mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

.field private mTopRound:Landroid/view/View;

.field mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v0, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/phone/HtcMCCallCard;->setVerticalFadingEdgeEnabled(Z)V

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 89
    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcMCCallCard;->setListItemTopRoundVisible(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/HtcMCCallCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/HtcMCCallCard;->onlyCdmaCalls()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcMCCallCard;->setListItemBottomRoundVisible(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcMCCallCard;->setListItemDividerVisible(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Ljava/util/List;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/phone/HtcMCCallCard;->getAliveCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private static getAliveCount(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x0

    .line 702
    .local v1, count:I
    if-eqz p0, :cond_1

    .line 703
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 704
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v1
.end method

.method private getEarliestCreateTime(Lcom/android/internal/telephony/Call;)J
    .locals 3
    .parameter "call"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 165
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 170
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private isCallGroupAlive(Lcom/android/phone/HtcMCCallCard$CallGroup;)Z
    .locals 3
    .parameter "callGroup"

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, isAlive:Z
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 214
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v1, 0x1

    .line 221
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_0
    return v1
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 714
    const-string v0, "HtcMCCallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method private onlyCdmaCalls()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 771
    const/4 v0, 0x0

    .line 773
    .local v0, allCdmaCalls:Z
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v6, :cond_5

    .line 775
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 776
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_3

    .line 777
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 778
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 779
    .local v1, bgPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2

    .line 780
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 801
    .end local v1           #bgPhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return v0

    .restart local v1       #bgPhone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_1
    move v0, v5

    .line 780
    goto :goto_0

    .line 783
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 788
    .end local v1           #bgPhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 789
    .restart local v1       #bgPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 790
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_4

    move v0, v4

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    .line 795
    .end local v1           #bgPhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v7, :cond_6

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/HtcMCCallCard;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v2

    .line 799
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    :cond_6
    move v4, v5

    .line 795
    goto :goto_2

    :cond_7
    :try_start_1
    const-string v4, "null"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private reorderCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)[Lcom/android/internal/telephony/Call;
    .locals 8
    .parameter "call1"
    .parameter "call2"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/phone/HtcMCCallCard;->getEarliestCreateTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 175
    .local v3, time1:J
    invoke-direct {p0, p2}, Lcom/android/phone/HtcMCCallCard;->getEarliestCreateTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    .line 177
    .local v5, time2:J
    const/4 v0, 0x0

    .line 178
    .local v0, orderedCall1:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 179
    .local v1, orderedCall2:Lcom/android/internal/telephony/Call;
    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 180
    move-object v0, p1

    .line 181
    move-object v1, p2

    .line 187
    :goto_0
    const/4 v7, 0x2

    new-array v2, v7, [Lcom/android/internal/telephony/Call;

    .line 188
    .local v2, orderedCalls:[Lcom/android/internal/telephony/Call;
    const/4 v7, 0x0

    aput-object v0, v2, v7

    .line 189
    const/4 v7, 0x1

    aput-object v1, v2, v7

    .line 191
    return-object v2

    .line 183
    .end local v2           #orderedCalls:[Lcom/android/internal/telephony/Call;
    :cond_0
    move-object v0, p2

    .line 184
    move-object v1, p1

    goto :goto_0
.end method

.method private setListItemBottomRoundVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "visible"

    .prologue
    .line 737
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    const v1, 0x2020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, round:Landroid/view/View;
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private setListItemDividerVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "visible"

    .prologue
    .line 743
    const v1, 0x7f0800d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 744
    .local v0, round:Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 745
    return-void

    .line 744
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setListItemTopRoundVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "visible"

    .prologue
    .line 731
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    const v1, 0x2020019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 733
    .local v0, round:Landroid/view/View;
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateActivityBackground()V
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    return-void
.end method

.method private updateCallGroup(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V
    .locals 2
    .parameter "callGroup"
    .parameter "isMultiple"

    .prologue
    .line 281
    if-eqz p1, :cond_1

    .line 282
    #getter for: Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->access$100(Lcom/android/phone/HtcMCCallCard$CallGroup;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 283
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->reset()V

    .line 289
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-void

    .line 286
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    #calls: Lcom/android/phone/HtcMCCallCard$CallGroup;->updateScreen(Z)V
    invoke-static {p1, p2}, Lcom/android/phone/HtcMCCallCard$CallGroup;->access$200(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V

    goto :goto_0
.end method

.method private updateCallGroups()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcMCCallCard;->setHoldCallPressed(Z)V

    .line 230
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-direct {p0, v3}, Lcom/android/phone/HtcMCCallCard;->isCallGroupAlive(Lcom/android/phone/HtcMCCallCard$CallGroup;)Z

    move-result v1

    .line 231
    .local v1, fgAlive:Z
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-direct {p0, v3}, Lcom/android/phone/HtcMCCallCard;->isCallGroupAlive(Lcom/android/phone/HtcMCCallCard$CallGroup;)Z

    move-result v0

    .line 233
    .local v0, bgAlive:Z
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/HtcMCCallCard;->mIsMultiple:Z

    .line 234
    iget-boolean v3, p0, Lcom/android/phone/HtcMCCallCard;->mIsMultiple:Z

    if-eqz v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mTopRound:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "divider_1"

    const-string v6, "id"

    const-string v7, "com.android.phone"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, resId:I
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "divider_3"

    const-string v6, "id"

    const-string v7, "com.android.phone"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 243
    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "divider_4"

    const-string v6, "id"

    const-string v7, "com.android.phone"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 247
    if-eqz v2, :cond_2

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .end local v2           #resId:I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-boolean v4, p0, Lcom/android/phone/HtcMCCallCard;->mIsMultiple:Z

    invoke-direct {p0, v3, v4}, Lcom/android/phone/HtcMCCallCard;->updateCallGroup(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V

    .line 277
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-boolean v4, p0, Lcom/android/phone/HtcMCCallCard;->mIsMultiple:Z

    invoke-direct {p0, v3, v4}, Lcom/android/phone/HtcMCCallCard;->updateCallGroup(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V

    .line 278
    return-void

    :cond_3
    move v3, v4

    .line 233
    goto :goto_0

    .line 253
    :cond_4
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 254
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mTopRound:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "divider_1"

    const-string v5, "id"

    const-string v6, "com.android.phone"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    .restart local v2       #resId:I
    if-eqz v2, :cond_5

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "divider_3"

    const-string v5, "id"

    const-string v6, "com.android.phone"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 260
    if-eqz v2, :cond_6

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "divider_4"

    const-string v5, "id"

    const-string v6, "com.android.phone"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 264
    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 271
    .end local v2           #resId:I
    :cond_7
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mTopRound:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 719
    iget-boolean v0, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_1

    .line 723
    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_2

    .line 726
    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 728
    :cond_2
    return-void
.end method

.method getActiveOrAliveCallGroup()Lcom/android/phone/HtcMCCallCard$CallGroup;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->isStateEquals(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 318
    :goto_0
    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->isStateEquals(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCallGroupOfState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/HtcMCCallCard$CallGroup;
    .locals 1
    .parameter "state"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {v0, p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->isStateEquals(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 348
    :goto_0
    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {v0, p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->isStateEquals(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initIfNeeded(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Landroid/content/Context;)Z
    .locals 7
    .parameter "call1"
    .parameter "call2"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, isCdmaCallGroup:Z
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/HtcMCCallCard;->onlyCdmaCalls()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 104
    .local v0, cdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v0, v3, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 109
    .end local v0           #cdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    if-nez v3, :cond_2

    .line 116
    if-eqz v1, :cond_1

    .line 117
    new-instance v3, Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;-><init>(Lcom/android/phone/HtcMCCallCard;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    iput-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 118
    new-instance v3, Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;-><init>(Lcom/android/phone/HtcMCCallCard;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    iput-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 125
    :goto_0
    const v3, 0x7f0800e3

    invoke-virtual {p0, v3}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mTopRound:Landroid/view/View;

    .line 127
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    const v4, 0x7f0800e4

    const v5, 0x7f0800e5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/HtcMCCallCard$CallGroup;->findLayoutById(II)V

    .line 128
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    #calls: Lcom/android/phone/HtcMCCallCard$CallGroup;->setBottomRoundVisibleOnSingleConnections(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/HtcMCCallCard$CallGroup;->access$000(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V

    .line 129
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->initListLayout(Landroid/content/Context;)V

    .line 131
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    const v4, 0x7f0800e6

    const v5, 0x7f0800e7

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/HtcMCCallCard$CallGroup;->findLayoutById(II)V

    .line 132
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->initListLayout(Landroid/content/Context;)V

    .line 133
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    #calls: Lcom/android/phone/HtcMCCallCard$CallGroup;->setBottomRoundVisibleOnSingleConnections(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/HtcMCCallCard$CallGroup;->access$000(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V

    .line 158
    iput-boolean v6, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    .line 159
    iget-boolean v3, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    :goto_1
    return v3

    .line 120
    :cond_1
    new-instance v3, Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;-><init>(Lcom/android/phone/HtcMCCallCard;Lcom/android/internal/telephony/Call;)V

    iput-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    .line 121
    new-instance v3, Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-direct {v3, p0, p2}, Lcom/android/phone/HtcMCCallCard$CallGroup;-><init>(Lcom/android/phone/HtcMCCallCard;Lcom/android/internal/telephony/Call;)V

    iput-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    goto :goto_0

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    .line 146
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 147
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 155
    :goto_2
    iget-boolean v3, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    goto :goto_1

    .line 149
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcMCCallCard;->reorderCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)[Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 151
    .local v2, orderedCalls:[Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setCall(Lcom/android/internal/telephony/Call;)V

    .line 152
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setCall(Lcom/android/internal/telephony/Call;)V

    goto :goto_2
.end method

.method isInited()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/phone/HtcMCCallCard;->mIsInited:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/android/phone/HtcMCCallCard;->updateActivityBackground()V

    .line 758
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 759
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/phone/HtcMCCallCard;->updateActivityBackground()V

    .line 751
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 752
    return-void
.end method

.method public setHoldCallPressed(Z)V
    .locals 8
    .parameter "pressed"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 662
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcMCCallCard;->getCallGroupOfState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/HtcMCCallCard$CallGroup;

    move-result-object v1

    .line 663
    .local v1, heldGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;
    if-eqz v1, :cond_0

    .line 664
    if-eqz p1, :cond_1

    .line 665
    const-string v4, "list_selector_background_pressed"

    const-string v5, "drawable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 667
    .local v3, resid:I
    iget-object v4, v1, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 668
    .local v0, height:I
    iget-object v4, v1, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 669
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 670
    iget-object v4, v1, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v4, v1, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 689
    .end local v0           #height:I
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #resid:I
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 676
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 677
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 679
    .restart local v3       #resid:I
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mUpperCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 681
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 683
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 684
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard;->mLowerCallGroup:Lcom/android/phone/HtcMCCallCard$CallGroup;

    iget-object v4, v4, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method updateStatusAndScreen()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/phone/HtcMCCallCard;->updateCallGroups()V

    .line 200
    return-void
.end method
