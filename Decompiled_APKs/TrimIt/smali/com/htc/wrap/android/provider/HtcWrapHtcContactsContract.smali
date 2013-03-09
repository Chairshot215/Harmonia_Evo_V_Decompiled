.class public Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Frequency;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$IpDial;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$VIP_SIM;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$VIP;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Diverted;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLACKLIST_PASSWORD;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLOCKED_NUMBER;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BLOCKED_SIM;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$BALCKLIST;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$UnknownContact;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Link;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Suggestion;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SuggestException;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$DefaultAction;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Groups;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Intent;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SIMContacts;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SimContactsColumns;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CallLogExt;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CallsExtColumns;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$ThumbnailsSequence;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SpeedDial;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SpeedDialColumns;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$EventInstance;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$EventInstanceColumns;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$HtcStructuredName;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$HtcEvent;,
        Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Contacts;
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
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1169
    sget-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;->enableManageCalls:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    return-void
.end method
