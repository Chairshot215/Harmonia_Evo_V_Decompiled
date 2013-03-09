.class public Lcom/android/internal/telephony/HtcIfIccCard$State;
.super Ljava/lang/Object;
.source "HtcIfIccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcIfIccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

.field public static final IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
