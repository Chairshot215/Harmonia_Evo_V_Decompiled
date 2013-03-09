.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/HtcIfAppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$EventList;,
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"


# virtual methods
.method public abstract getScreenBusyState()Z
.end method

.method public abstract notifyUserActivity(I)V
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onHandleEventList(IZ)V
.end method

.method public abstract sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
.end method

.method public abstract updateIdleScreenState(Z)V
.end method
