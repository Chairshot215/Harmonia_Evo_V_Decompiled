.class public Lcom/htc/android/mail/Account$DeviceInfo;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# instance fields
.field public AndroidId:Ljava/lang/String;

.field public MDN:Ljava/lang/String;

.field public MEID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2977
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2973
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/Account$DeviceInfo;->MDN:Ljava/lang/String;

    .line 2979
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2980
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcom/htc/android/mail/Account;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/Account$DeviceInfo;->MDN:Ljava/lang/String;

    .line 2981
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/Account$DeviceInfo;->MEID:Ljava/lang/String;

    .line 2982
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/Account$DeviceInfo;->AndroidId:Ljava/lang/String;

    .line 2983
    return-void
.end method
