.class public Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;
.super Ljava/lang/Object;
.source "HtcWrapCatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;
    }
.end annotation


# instance fields
.field private mCmdType:I

.field public mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mCmdType:I

    .line 15
    return-void
.end method


# virtual methods
.method public getCmdType()Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mCmdType:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getEventSettings()Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    return-object v0
.end method

.method public setCmdType(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    iput v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mCmdType:I

    .line 31
    return-void
.end method

.method public setEventSettings(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    invoke-direct {v0, p0}, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;-><init>(Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    .line 21
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;->eventList:[I

    .line 22
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    iget-object v1, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    iget-object v1, v1, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;->eventList:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    return-void
.end method
