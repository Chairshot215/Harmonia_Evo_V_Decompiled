.class public interface abstract Lcom/android/internal/telephony/cat/HtcIfAppInterface;
.super Ljava/lang/Object;
.source "HtcIfAppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/HtcIfAppInterface$EventList;,
        Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    }
.end annotation


# virtual methods
.method public abstract getScreenBusyState()Z
.end method

.method public abstract onHandleEventList(IZ)V
.end method

.method public abstract sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
.end method
