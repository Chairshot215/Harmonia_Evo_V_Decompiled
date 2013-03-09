.class final Lcom/android/phone/PhoneUtils$9;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2413
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2421
    move-object v2, p2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .local v2, conn:Lcom/android/internal/telephony/Connection;
    move-object v0, p2

    .line 2428
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2429
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 2430
    .local v4, o:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2431
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    instance-of v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_3

    .line 2432
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v1, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2440
    :cond_0
    :goto_0
    iget-boolean v5, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v5, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2457
    :cond_1
    iget v5, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v5, :cond_2

    .line 2458
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    iput v5, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2483
    :cond_2
    :goto_1
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2486
    invoke-static {v1, p3}, Lcom/android/phone/EcidClient;->updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2488
    return-void

    .line 2433
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 2434
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 2465
    .end local v4           #o:Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 2469
    .local v3, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_2

    .line 2470
    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2471
    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2473
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_5

    .line 2475
    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2476
    iget v5, p3, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v5, v3, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 2479
    :cond_5
    move-object p3, v3

    goto :goto_1
.end method
