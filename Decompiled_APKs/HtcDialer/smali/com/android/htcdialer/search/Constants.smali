.class public Lcom/android/htcdialer/search/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/search/Constants$KEY;,
        Lcom/android/htcdialer/search/Constants$UI;,
        Lcom/android/htcdialer/search/Constants$DATA;
    }
.end annotation


# static fields
.field public static final LOCK_PRELOAD_CALL_LOG:Ljava/lang/Object;

.field public static final LOCK_PRELOAD_CALL_LOG_ORDER_BY_COUNT:Ljava/lang/Object;

.field public static final LOCK_PRELOAD_FAVORITE:Ljava/lang/Object;

.field public static final LOCK_PRELOAD_FAVORITE_WITHOUT_NAME:Ljava/lang/Object;

.field public static final LOCK_PRELOAD_FIRST_SEARCH_RESULT:Ljava/lang/Object;

.field public static final LOCK_PRELOAD_PERSON:Ljava/lang/Object;

.field public static final LOCK_PRELOAD_PERSON_WITHOUT_NAME:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_CALL_LOG:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_CALL_LOG_ORDER_BY_COUNT:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_PERSON:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_PERSON_WITHOUT_NAME:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_FAVORITE_WITHOUT_NAME:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_FAVORITE:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htcdialer/search/Constants;->LOCK_PRELOAD_FIRST_SEARCH_RESULT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method
