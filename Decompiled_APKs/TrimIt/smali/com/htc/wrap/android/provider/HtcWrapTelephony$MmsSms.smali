.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms$WordsTable;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms$PendingMessages;
    }
.end annotation


# static fields
.field public static final CONTENT_CONVERSATIONS_V2_URI:Landroid/net/Uri;

.field public static final CONTENT_CONVERSATION_BY_ADDRESS_URI:Landroid/net/Uri;

.field public static final CONTENT_DRAFT_LIST_URI:Landroid/net/Uri;

.field public static final CONTENT_SEARCH_URI:Landroid/net/Uri;

.field public static final CONTENT_UNDELIVERED_V2_URI:Landroid/net/Uri;

.field public static final CONTENT_V2_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1082
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 1084
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_V2_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;->CONTENT_CONVERSATIONS_V2_URI:Landroid/net/Uri;

    .line 1087
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_V2_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;->CONTENT_UNDELIVERED_V2_URI:Landroid/net/Uri;

    .line 1090
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_LIST_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;->CONTENT_DRAFT_LIST_URI:Landroid/net/Uri;

    .line 1093
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    .line 1096
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATION_BY_ADDRESS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$MmsSms;->CONTENT_CONVERSATION_BY_ADDRESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    return-void
.end method
