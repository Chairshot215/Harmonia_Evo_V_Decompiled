.class public Lcom/htc/wrap/android/util/HtcWrapPatterns;
.super Ljava/lang/Object;
.source "HtcWrapPatterns.java"


# static fields
.field public static final LOCATION_MATCH_GROUP_ADDRESS:I = 0x4

.field public static final LOCATION_MATCH_GROUP_LATITUDE:I = 0x3

.field public static final LOCATION_MATCH_GROUP_LONGTITUDE:I = 0x2

.field public static final LOCATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/htc/wrap/android/util/HtcWrapPatterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
