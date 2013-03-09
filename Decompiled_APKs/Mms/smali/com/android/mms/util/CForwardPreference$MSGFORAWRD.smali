.class Lcom/android/mms/util/CForwardPreference$MSGFORAWRD;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CForwardPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MSGFORAWRD"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_FORWARD_EMAIL:Ljava/lang/String; = "forward_emial_address"

.field public static final KEY_FORWARD_EMAIL_TIME_STAMP:Ljava/lang/String; = "forward_email_time_stamp"

.field public static final KEY_FORWARD_PHONE:Ljava/lang/String; = "forward_phone_number"

.field public static final KEY_FORWARD_PHONE_TIME_STAMP:Ljava/lang/String; = "forward_phone_time_stamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 906
    const-string v0, "content://telephony/msgforward"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/CForwardPreference$MSGFORAWRD;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 905
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
