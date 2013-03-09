.class public final Landroid/provider/Telephony$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final EXTRA_FLASH_PLMN:Ljava/lang/String; = "flashPlmn"

.field public static final EXTRA_MCC:Ljava/lang/String; = "mccString"

.field public static final EXTRA_NETWORK_STATE:Ljava/lang/String; = "networkState"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered_icc"

.field public static final EXTRA_UNREGISTERED_CODE:Ljava/lang/String; = "unregistered_icc_code"

.field public static final MCC_STRING_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MCC_STRING_UPDATED"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
