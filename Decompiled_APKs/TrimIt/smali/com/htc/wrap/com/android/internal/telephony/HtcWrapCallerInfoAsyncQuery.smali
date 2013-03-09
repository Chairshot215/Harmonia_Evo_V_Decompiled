.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "HtcWrapCallerInfoAsyncQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htcStartQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 1
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"
    .parameter "contactId"
    .parameter "numberType"

    .prologue
    .line 24
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->htcStartQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method
