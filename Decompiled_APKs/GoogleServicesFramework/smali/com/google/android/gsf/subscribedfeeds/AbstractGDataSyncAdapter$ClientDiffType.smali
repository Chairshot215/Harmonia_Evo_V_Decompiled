.class public final enum Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
.super Ljava/lang/Enum;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientDiffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

.field public static final enum DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

.field public static final enum INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

.field public static final enum UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    .line 83
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    .line 84
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->$VALUES:[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->$VALUES:[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual {v0}, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    return-object v0
.end method
