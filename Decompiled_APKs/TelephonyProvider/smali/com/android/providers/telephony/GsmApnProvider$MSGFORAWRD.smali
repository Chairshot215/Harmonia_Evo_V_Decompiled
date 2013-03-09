.class Lcom/android/providers/telephony/GsmApnProvider$MSGFORAWRD;
.super Ljava/lang/Object;
.source "GsmApnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/GsmApnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MSGFORAWRD"
.end annotation


# static fields
.field public static final FORAWRD_EMAIL_ADDRESS:Ljava/lang/String; = "forward_emial_address"

.field public static final FORAWRD_EMAIL_TIME_STAMP:Ljava/lang/String; = "forward_email_time_stamp"

.field public static final FORAWRD_PHONE_TIME_STAMP:Ljava/lang/String; = "forward_phone_time_stamp"

.field public static final FORWARD_PHONE_NUMBER:Ljava/lang/String; = "forward_phone_number"

.field private static final PREF_NAME:Ljava/lang/String; = "MSG_FORWARD_INFO"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
