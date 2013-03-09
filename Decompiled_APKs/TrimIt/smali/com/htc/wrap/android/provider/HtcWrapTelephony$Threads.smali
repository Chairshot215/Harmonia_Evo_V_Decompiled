.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Threads;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Threads"
.end annotation


# static fields
.field public static final CONTENT_V2_URI:Landroid/net/Uri;

.field public static final OBSOLETE_THREADS_V2_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 895
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 896
    sget-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_V2_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Threads;->OBSOLETE_THREADS_V2_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrCreateThreadIdV2(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .parameter "context"
    .parameter "recipient"

    .prologue
    .line 899
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 904
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    return-wide v0
.end method
