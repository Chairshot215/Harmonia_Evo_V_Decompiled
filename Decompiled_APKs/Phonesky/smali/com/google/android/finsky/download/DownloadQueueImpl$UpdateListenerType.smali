.class final enum Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;
.super Ljava/lang/Enum;
.source "DownloadQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateListenerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field public static final enum CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field public static final enum COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field public static final enum ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field public static final enum NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field public static final enum PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

.field public static final enum START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const-string v1, "NOTIFICATION_CLICKED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->$VALUES:[Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->$VALUES:[Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    return-object v0
.end method
