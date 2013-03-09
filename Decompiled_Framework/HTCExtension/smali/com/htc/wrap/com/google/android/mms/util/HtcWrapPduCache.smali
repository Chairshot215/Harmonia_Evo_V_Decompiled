.class public Lcom/htc/wrap/com/google/android/mms/util/HtcWrapPduCache;
.super Ljava/lang/Object;
.source "HtcWrapPduCache.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedItemCount(Lcom/google/android/mms/util/PduCache;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/util/PduCache;->getCachedItemCount()I

    move-result v0

    return v0
.end method

.method public static invalidate(Lcom/google/android/mms/util/PduCache;Ljava/lang/Long;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public static invalidateAll(Lcom/google/android/mms/util/PduCache;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/mms/util/PduCache;->invalidateAll()V

    return-void
.end method

.method public static purge(Lcom/google/android/mms/util/PduCache;Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCastInstance()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    return-object v0
.end method
