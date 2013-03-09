.class public final Landroid/provider/HtcContactsContract;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcContactsContract$Frequency;,
        Landroid/provider/HtcContactsContract$IpDial;,
        Landroid/provider/HtcContactsContract$VIP_SIM;,
        Landroid/provider/HtcContactsContract$VIP;,
        Landroid/provider/HtcContactsContract$Diverted;,
        Landroid/provider/HtcContactsContract$BLACKLIST_PASSWORD;,
        Landroid/provider/HtcContactsContract$BLOCKED_NUMBER;,
        Landroid/provider/HtcContactsContract$BLOCKED_SIM;,
        Landroid/provider/HtcContactsContract$BALCKLIST;,
        Landroid/provider/HtcContactsContract$CommonDataKinds;,
        Landroid/provider/HtcContactsContract$UnknownContact;,
        Landroid/provider/HtcContactsContract$Link;,
        Landroid/provider/HtcContactsContract$Suggestion;,
        Landroid/provider/HtcContactsContract$SuggestException;,
        Landroid/provider/HtcContactsContract$DefaultAction;,
        Landroid/provider/HtcContactsContract$Groups;,
        Landroid/provider/HtcContactsContract$Intent;,
        Landroid/provider/HtcContactsContract$SIMContacts;,
        Landroid/provider/HtcContactsContract$SimContactsColumns;,
        Landroid/provider/HtcContactsContract$CallLogExt;,
        Landroid/provider/HtcContactsContract$CallsExtColumns;,
        Landroid/provider/HtcContactsContract$ThumbnailsSequence;,
        Landroid/provider/HtcContactsContract$SpeedDial;,
        Landroid/provider/HtcContactsContract$SpeedDialColumns;,
        Landroid/provider/HtcContactsContract$EventInstance;,
        Landroid/provider/HtcContactsContract$EventInstanceColumns;,
        Landroid/provider/HtcContactsContract$HtcStructuredName;,
        Landroid/provider/HtcContactsContract$HtcEvent;,
        Landroid/provider/HtcContactsContract$Contacts;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_MYPHONEBOOK:Ljava/lang/String; = "myphonebook"

.field public static final ACCOUNT_NAME_PC:Ljava/lang/String; = "pcsc"

.field public static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "SIM"

.field public static final ACCOUNT_NAME_SIM_SDN:Ljava/lang/String; = "SIM_SDN"

.field public static final ACCOUNT_TYPE_HTC_EXCHANGE:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final ACCOUNT_TYPE_MYPHONEBOOK:Ljava/lang/String; = "com.htc.android.myphonebook"

.field public static final ACCOUNT_TYPE_PC:Ljava/lang/String; = "com.htc.android.pcsc"

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "com.anddroid.contacts.sim"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final enableManageCalls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x9b

    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
