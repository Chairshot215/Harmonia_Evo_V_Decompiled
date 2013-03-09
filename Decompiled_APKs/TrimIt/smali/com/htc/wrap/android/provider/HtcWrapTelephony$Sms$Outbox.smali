.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Outbox;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Outbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 783
    sget-object v0, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallbackAndPriority(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)I
    .locals 1
    .parameter "resolver"
    .parameter "Callback"
    .parameter "Priority"
    .parameter "uri"

    .prologue
    .line 794
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Telephony$Sms$Outbox;->addCallbackAndPriority(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static addMessageV2(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    .line 788
    invoke-static/range {p0 .. p7}, Landroid/provider/Telephony$Sms$Outbox;->addMessageV2(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
