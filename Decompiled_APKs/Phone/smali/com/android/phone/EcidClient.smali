.class public Lcom/android/phone/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EcidClient$CityIdTimerManager;
    }
.end annotation


# static fields
.field public static final CALLERID_LOOKUP_DATA_ACCESS_NOT_PERMITTED:I = 0x10

.field public static final CALLERID_LOOKUP_INCLUDING_CNAM:I = 0x8

.field public static final CALLERID_LOOKUP_INCOMING_CALL:I = 0x20

.field public static final CALLERID_LOOKUP_NETWORK_IS_OUTSIDE_NANP:I = 0x4

.field public static final CALLERID_LOOKUP_SYSTEM_PROVIDED_CID:I = 0x2

.field public static final CALLERID_LOOKUP_USER_PROVIDED_CID:I = 0x1

.field static final CNAM_TEST_STRING:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x0

.field private static final ECID_AOSP_VERSION:Ljava/lang/String; = "4.0.2"

.field private static final SECS_DISPLAY_CITYID:I = 0x3

.field private static final SECS_DISPLAY_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Phone-ECID"

.field private static final VDBG:Z

.field static cnapDelivered:Z

.field static m_idPendingIntent:I

.field static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field static m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;


# instance fields
.field public m_bFriends:Z

.field private m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field m_callInfo:Lcom/android/internal/telephony/CallerInfo;

.field public m_callerId:Ljava/lang/String;

.field m_ccOwner:Lcom/android/phone/CallCard;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_cnapDelivered:Z

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lConnectionTime:J

.field public m_lastName:Ljava/lang/String;

.field m_pending:Landroid/app/PendingIntent;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/android/phone/EcidClient;->DBG:Z

    .line 76
    sput-boolean v0, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 78
    sput v0, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 102
    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 103
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 760
    return-void
.end method

.method static callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .parameter "oInfo"

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 864
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v1, p0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 865
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 868
    .end local p0
    :cond_0
    :goto_0
    return-object v0

    .line 866
    .restart local p0
    :cond_1
    instance-of v1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    .line 867
    check-cast p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method static cancelLookupQueriesInSet(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 386
    .local v2, key:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EcidClient;

    .line 387
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 389
    iget-object v4, v3, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #thisObj:Lcom/android/phone/EcidClient;
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Phone-ECID"

    const-string v5, "cancelLookupQueriesInSet"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static cancelTimer()V
    .locals 1

    .prologue
    .line 820
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    if-eqz v0, :cond_0

    .line 821
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    invoke-virtual {v0}, Lcom/android/phone/EcidClient$CityIdTimerManager;->cancelTimer()V

    .line 822
    :cond_0
    return-void
.end method

.method static dbgDumpPending()V
    .locals 5

    .prologue
    .line 892
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 893
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 895
    .local v1, key:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EcidClient;

    .line 899
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->dbgLogData()V

    goto :goto_0

    .line 901
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #thisObj:Lcom/android/phone/EcidClient;
    :cond_0
    return-void
.end method

.method public static endAllLookupQueries()V
    .locals 5

    .prologue
    .line 368
    :try_start_0
    const-string v2, "Phone-ECID"

    const-string v3, "Cancelling All Lookup Queries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 370
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Phone-ECID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling pending intent failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "ci"

    .prologue
    .line 348
    :try_start_0
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidClient;

    .line 352
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, v1, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 359
    :cond_0
    monitor-exit v3

    .line 362
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #thisObj:Lcom/android/phone/EcidClient;
    :goto_0
    return-void

    .line 359
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "conn"

    .prologue
    .line 854
    if-eqz p0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 858
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;
    .locals 3
    .parameter "ci"

    .prologue
    .line 139
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 142
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v1, p0, :cond_0

    .line 151
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :goto_0
    return-object v0

    .line 147
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_0
    const-string v1, "Phone-ECID"

    const-string v2, "Old EcidClient object found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p0}, Lcom/android/phone/EcidClient;->endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V

    .line 151
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;
    .locals 1
    .parameter "ci"
    .parameter "lConnectionTime"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;JLjava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v0

    return-object v0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;JLjava/lang/String;)Lcom/android/phone/EcidClient;
    .locals 4
    .parameter "ci"
    .parameter "lConnectionTime"
    .parameter "cnam"

    .prologue
    .line 119
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 122
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_2

    .line 124
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 127
    .local v1, cnameChanged:Z
    :goto_0
    iget-object v2, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v2, p0, :cond_1

    iget-wide v2, v0, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 134
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    .end local v1           #cnameChanged:Z
    :goto_1
    return-object v0

    .line 124
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    .restart local v1       #cnameChanged:Z
    :cond_1
    const-string v2, "Phone-ECID"

    const-string v3, "Old EcidClient object found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p0}, Lcom/android/phone/EcidClient;->endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V

    .line 134
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    .end local v1           #cnameChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getClient(Ljava/lang/String;)Lcom/android/phone/EcidClient;
    .locals 2
    .parameter "strCallerId"

    .prologue
    .line 110
    const-string v0, "Phone-ECID"

    const-string v1, "ECID AOSP VERSION: 4.0.2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    return-object v0
.end method

.method public static handleAlternatingDisplay(Lcom/android/internal/telephony/Phone;J)Z
    .locals 2
    .parameter "phone"
    .parameter "timeElapsed"

    .prologue
    .line 828
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/EcidClient;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v0

    .line 829
    .local v0, bAnyActive:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/EcidClient;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 830
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/phone/EcidClient;->handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 831
    return v0
.end method

.method static handleAlternatingDisplayForCall(Lcom/android/internal/telephony/Call;J)Z
    .locals 3
    .parameter "call"
    .parameter "timeElapsed"

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EcidClient;->getCallerInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 838
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v1

    .line 839
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/phone/EcidClient;->implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V

    .line 842
    const/4 v2, 0x1

    .line 844
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static handleResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 444
    const-string v2, "id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, strCallerId:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidClient;

    .line 449
    .local v1, thisObj:Lcom/android/phone/EcidClient;
    if-nez v1, :cond_0

    .line 451
    const-string v2, "Phone-ECID"

    const-string v3, "  Could not find NameIdClient object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {v1, p0, p2, p3}, Lcom/android/phone/EcidClient;->handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method static removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V
    .locals 3
    .parameter
    .parameter "call"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telephony/Call;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 428
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 433
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_1
    return-void

    .line 424
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z
    .locals 12
    .parameter "o"
    .parameter "ownerActivity"
    .parameter "ccOwner"
    .parameter "nResultMessage"
    .parameter "bIncoming"
    .parameter "bSystemProvided"
    .parameter "bIsNANP"
    .parameter "bIsRoaming"
    .parameter "lConnectionTime"
    .parameter "conn"

    .prologue
    .line 208
    const-string v9, "Phone-ECID"

    const-string v10, "ECID AOSP VERSION: 4.0.2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "Phone-ECID"

    const-string v10, "sendLookupQueryToService()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 216
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p10, :cond_2

    .line 217
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_1

    .line 218
    const-string v9, "Phone-ECID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendLookupQueryToService() : conn is not null, conn.getCnapName() -//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 224
    :cond_2
    if-eqz v2, :cond_3

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v9, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 225
    :cond_3
    const/4 v9, 0x0

    .line 342
    :goto_0
    return v9

    .line 226
    :cond_4
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 229
    const/4 v9, 0x0

    goto :goto_0

    .line 231
    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v6, resultTemplate:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ecid.query:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 234
    const-string v9, "id"

    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/4 v9, 0x0

    invoke-virtual {p1, p3, v6, v9}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 237
    .local v5, result:Landroid/app/PendingIntent;
    if-nez v5, :cond_7

    .line 238
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_6

    .line 239
    const-string v9, "Phone-ECID"

    const-string v10, "null PendingInent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 243
    :cond_7
    const/4 v8, 0x0

    .line 244
    .local v8, thisObj:Lcom/android/phone/EcidClient;
    const/4 v3, 0x0

    .line 252
    .local v3, nFlags:I
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1, v9}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;JLjava/lang/String;)Lcom/android/phone/EcidClient;

    move-result-object v8

    .line 254
    if-nez v8, :cond_e

    .line 259
    new-instance v8, Lcom/android/phone/EcidClient;

    .end local v8           #thisObj:Lcom/android/phone/EcidClient;
    invoke-direct {v8}, Lcom/android/phone/EcidClient;-><init>()V

    .line 260
    .restart local v8       #thisObj:Lcom/android/phone/EcidClient;
    iput-object p2, v8, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    .line 261
    iput-object v2, v8, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 262
    iput-object v5, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    .line 263
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 264
    move-wide/from16 v0, p8

    iput-wide v0, v8, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    .line 265
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 269
    sget-object v10, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v10

    .line 270
    :try_start_0
    sget-object v9, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz p5, :cond_d

    const/4 v9, 0x2

    :goto_1
    or-int/2addr v3, v9

    .line 277
    if-nez p6, :cond_8

    .line 278
    or-int/lit8 v3, v3, 0x4

    .line 280
    :cond_8
    if-eqz p4, :cond_9

    .line 281
    or-int/lit8 v3, v3, 0x20

    .line 313
    :cond_9
    :goto_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v7, serviceIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.cequint.ecid"

    const-string v11, "com.cequint.ecid.CallerIdLookupAsync"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 315
    const-string v9, "pCallerID"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 317
    const-string v9, "pCNAM"

    iget-object v10, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 319
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_a

    .line 320
    const-string v9, "Phone-ECID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendLookupQueryToService - pCNAM: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_a
    :goto_3
    if-eqz p7, :cond_b

    .line 329
    const-string v9, "Phone-ECID"

    const-string v10, "bIsRoaming is set"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    or-int/lit8 v3, v3, 0x10

    .line 333
    :cond_b
    const-string v9, "nFlags"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v9, "pending"

    iget-object v10, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p1, v7}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_c

    .line 337
    const-string v9, "Phone-ECID"

    const-string v10, "Error starting service, calling endLookupQuery"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v2}, Lcom/android/phone/EcidClient;->endLookupQuery(Lcom/android/internal/telephony/CallerInfo;)V

    .line 342
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 271
    .end local v7           #serviceIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 276
    :cond_d
    const/4 v9, 0x1

    goto :goto_1

    .line 288
    :cond_e
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 290
    iget-boolean v9, v8, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    if-nez v9, :cond_10

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 291
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_f

    .line 292
    const-string v9, "Phone-ECID"

    const-string v10, "Finally got a cnapName. Pass the value to ECID client again."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_f
    or-int/lit8 v3, v3, 0x20

    goto/16 :goto_2

    .line 294
    :cond_10
    iget-boolean v9, v8, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 295
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_11

    .line 296
    const-string v9, "Phone-ECID"

    const-string v10, "thisObj.m_cnapDelivered has a wrong flag, reset it "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_11
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 298
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0

    .line 303
    :cond_12
    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_13

    .line 304
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    .line 305
    sget-boolean v9, Lcom/android/phone/EcidClient;->DBG:Z

    if-eqz v9, :cond_13

    .line 306
    const-string v9, "Phone-ECID"

    const-string v10, "call disconnected, reset thisObj.m_cnapDelivered "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_13
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0

    .line 323
    .restart local v7       #serviceIntent:Landroid/content/Intent;
    :cond_14
    const-string v9, "Phone-ECID"

    const-string v10, "No CNAM passed by radio layer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static setCityIdDisplayOneLine(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;Z)V
    .locals 3
    .parameter "tv"
    .parameter "info"
    .parameter "isIncoming"

    .prologue
    .line 702
    invoke-static {p1}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 703
    .local v0, thisObj:Lcom/android/phone/EcidClient;
    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    iput-object p0, v0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 708
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/phone/EcidClient;->implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V

    .line 709
    invoke-static {}, Lcom/android/phone/EcidClient;->startTimer()V

    goto :goto_0
.end method

.method public static setEcidDisplay(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 7
    .parameter "info"
    .parameter "tvCityId"
    .parameter "ivConnectionIcon"
    .parameter "bIncoming"

    .prologue
    const/4 v5, 0x0

    .line 617
    const/16 v1, 0x8

    .line 620
    .local v1, nDisplayCityId:I
    invoke-static {p0}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v3

    .line 625
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v3, :cond_0

    .line 627
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->dbgLogData()V

    .line 629
    iput-boolean v5, v3, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 630
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 631
    iput-boolean v5, v3, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 633
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, strDisplay:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    const-string v6, ", "

    invoke-static {v4, v2, v5, v6}, Lcom/android/phone/CityIdInfo;->ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, ellipsizedDisplay:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    const/4 v1, 0x0

    .line 666
    .end local v0           #ellipsizedDisplay:Ljava/lang/String;
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    :cond_1
    return-void
.end method

.method static startTimer()V
    .locals 1

    .prologue
    .line 813
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Lcom/android/phone/EcidClient$CityIdTimerManager;

    invoke-direct {v0}, Lcom/android/phone/EcidClient$CityIdTimerManager;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    .line 815
    :cond_0
    sget-object v0, Lcom/android/phone/EcidClient;->m_timer:Lcom/android/phone/EcidClient$CityIdTimerManager;

    invoke-virtual {v0}, Lcom/android/phone/EcidClient$CityIdTimerManager;->startTimer()V

    .line 816
    return-void
.end method

.method static updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "oOld"
    .parameter "oNew"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 157
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p1}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 159
    .local v0, ciNew:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 162
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, phoneNumberOld:Ljava/lang/String;
    sget-object v5, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/EcidClient;

    .line 164
    .local v4, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v4, :cond_1

    .line 171
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, phoneNumberNew:Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    iget-object v5, v4, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v5, v1, :cond_0

    .line 176
    const-string v5, "Phone-ECID"

    const-string v6, "uCIM: replacing with new callInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iput-object v0, v4, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 193
    .end local v2           #phoneNumberNew:Ljava/lang/String;
    .end local v3           #phoneNumberOld:Ljava/lang/String;
    .end local v4           #thisObj:Lcom/android/phone/EcidClient;
    :cond_1
    return-void
.end method

.method public static updateLookupQueries(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 402
    const-string v2, "Phone-ECID"

    const-string v3, "updateLookupQueries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 405
    .local v1, phoneType:I
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 406
    .local v0, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 407
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 408
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 411
    invoke-static {v0}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V

    .line 412
    return-void
.end method


# virtual methods
.method public canUpdateContactPhoto()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 528
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 529
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: no picture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_0
    return v0

    .line 532
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_1

    .line 533
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: use contact photo && photo exist && isCachedPhotoCurrent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    .line 537
    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: contact photo exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dbgLogData()V
    .locals 0

    .prologue
    .line 888
    return-void
.end method

.method public getCityStateDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_0
    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_0

    .line 612
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "ctx"
    .parameter "strImageUrl"

    .prologue
    .line 509
    const/4 v3, 0x0

    .line 511
    .local v3, pic:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 514
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 515
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 523
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 517
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 5
    .parameter "ctx"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 462
    const-string v2, "cid_pNumber"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_callerId:Ljava/lang/String;

    .line 463
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    .line 465
    const-string v2, "Phone-ECID"

    const-string v3, "extracting NameId info... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "cid_pName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    .line 467
    const-string v2, "cid_pCompany"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 468
    const-string v2, "cid_pFirstName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 469
    const-string v2, "cid_pLastName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 470
    const-string v2, "cid_pCityName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    .line 471
    const-string v2, "cid_pStateName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    .line 472
    const-string v2, "cid_pStateAbbr"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    .line 473
    const-string v2, "cid_pCountryName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    .line 474
    const-string v2, "cid_pImage"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    .line 475
    const-string v2, "cid_bSameNetwork"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    .line 476
    const-string v2, "cid_bFriends"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bFriends:Z

    .line 477
    const-string v2, "cid_bPreferCidImage"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    .line 478
    const-string v2, "cid_pDisplayName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    .line 480
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/phone/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v0

    .line 487
    .local v0, modified:Z
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, strDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    invoke-static {}, Lcom/android/phone/util/Auxiliary;->notify3DLockscreen()V

    .line 505
    .end local v0           #modified:Z
    .end local v1           #strDisplay:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    const-string v2, "Phone-ECID"

    const-string v3, "bad result code"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hasCityId()Z
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method implSetCityIdDisplayOneLine(Lcom/android/internal/telephony/CallerInfo;J)V
    .locals 9
    .parameter "info"
    .parameter "timeElapsed"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 714
    iput-boolean v4, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 717
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    const-wide/16 v6, 0x6

    rem-long v6, p2, v6

    long-to-int v2, v6

    .line 729
    .local v2, nPhase:I
    const/4 v6, 0x3

    if-lt v2, v6, :cond_3

    move v1, v4

    .line 730
    .local v1, isPhaseDisplayCityId:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 732
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    if-nez v6, :cond_2

    .line 735
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, strDisplay:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 738
    iget-object v6, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    const-string v8, ", "

    invoke-static {v6, v3, v7, v8}, Lcom/android/phone/CityIdInfo;->ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, ellipsizedDisplay:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iput-boolean v4, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 750
    .end local v0           #ellipsizedDisplay:Ljava/lang/String;
    .end local v3           #strDisplay:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    if-eqz v4, :cond_0

    .line 754
    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .restart local v3       #strDisplay:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iput-boolean v5, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    goto :goto_0

    .end local v1           #isPhaseDisplayCityId:Z
    .end local v3           #strDisplay:Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 729
    goto :goto_1
.end method

.method public updateCallerInfo(Landroid/content/Context;)Z
    .locals 6
    .parameter "ctx"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 547
    .local v0, bModified:Z
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 554
    const/4 v0, 0x1

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->canUpdateContactPhoto()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v2, :cond_2

    .line 566
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 568
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 569
    const-string v2, "Phone-ECID"

    const-string v3, "Set ECID pictures done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x1

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v2, :cond_3

    .line 575
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v3, "cname"

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const/4 v0, 0x1

    .line 581
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, city:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 583
    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v3, "CITY_ID"

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const/4 v0, 0x1

    .line 588
    :cond_4
    return v0
.end method
