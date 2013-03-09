.class public final Landroid/provider/Telephony$HtcMessages;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$BaseHtcVvmColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtcMessages"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static DEFAULT_SORT_ORDER:Ljava/lang/String; = null

.field public static final MSG_TYPE_NAME:Ljava/lang/String; = "htcmsgs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://htcmsgs/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "date DESC"

    sput-object v0, Landroid/provider/Telephony$HtcMessages;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
