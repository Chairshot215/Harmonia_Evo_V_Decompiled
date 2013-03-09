.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Intents;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$ScrapSpace;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Rate;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Part;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Addr;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Outbox;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Draft;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Sent;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 913
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    return-void
.end method

.method public static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 924
    invoke-static {p0, p1}, Landroid/provider/Telephony$Mms;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 934
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
