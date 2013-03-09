.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallerInfo;
.super Ljava/lang/Object;
.source "HtcWrapCallerInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerIdAndPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerIdAndPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerPersonId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerPersonId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method
