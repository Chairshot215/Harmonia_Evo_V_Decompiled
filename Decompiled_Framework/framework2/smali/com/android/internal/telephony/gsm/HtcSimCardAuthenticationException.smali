.class public Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;
.super Ljava/lang/RuntimeException;
.source "HtcSimCardAuthenticationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    }
.end annotation


# instance fields
.field e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    return-void
.end method
