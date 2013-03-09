.class public Lcom/android/providers/telephony/util/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field private static final RUIM_URI:Landroid/net/Uri; = null

.field private static final SIM_URI_BASEWIN:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SimUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://sms/gsmsim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/util/SimUtils;->SIM_URI_BASEWIN:Landroid/net/Uri;

    .line 20
    const-string v0, "content://sms/cdmaruim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/util/SimUtils;->RUIM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMessageFromIccExt(II)I
    .locals 1
    .parameter "simIndex"
    .parameter "phoneType"

    .prologue
    .line 33
    const/4 v0, -0x1

    return v0
.end method

.method public static getAllMessagesFromIccExt(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 2
    .parameter "context"
    .parameter "address"
    .parameter "phoneType"

    .prologue
    .line 39
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static inboxaddSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJIII)V
    .locals 0
    .parameter "cr"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "time"
    .parameter "read"
    .parameter "threadId"
    .parameter "simsms"
    .parameter "simindex"
    .parameter "phoneType"

    .prologue
    .line 46
    return-void
.end method

.method public static isDualphone()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public static sentaddSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIII)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "threadId"
    .parameter "simsms"
    .parameter "simindex"
    .parameter "phoneType"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
