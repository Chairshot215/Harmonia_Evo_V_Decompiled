.class final enum Lcom/android/mms/MmsApp$IongKey;
.super Ljava/lang/Enum;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IongKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/MmsApp$IongKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/MmsApp$IongKey;

.field public static final enum CMAS_LASTCANCEL:Lcom/android/mms/MmsApp$IongKey;

.field public static final enum pref_key_ux_log_collection_time:Lcom/android/mms/MmsApp$IongKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    new-instance v0, Lcom/android/mms/MmsApp$IongKey;

    const-string v1, "CMAS_LASTCANCEL"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/MmsApp$IongKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IongKey;->CMAS_LASTCANCEL:Lcom/android/mms/MmsApp$IongKey;

    .line 279
    new-instance v0, Lcom/android/mms/MmsApp$IongKey;

    const-string v1, "pref_key_ux_log_collection_time"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/MmsApp$IongKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IongKey;->pref_key_ux_log_collection_time:Lcom/android/mms/MmsApp$IongKey;

    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/MmsApp$IongKey;

    sget-object v1, Lcom/android/mms/MmsApp$IongKey;->CMAS_LASTCANCEL:Lcom/android/mms/MmsApp$IongKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/MmsApp$IongKey;->pref_key_ux_log_collection_time:Lcom/android/mms/MmsApp$IongKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/MmsApp$IongKey;->$VALUES:[Lcom/android/mms/MmsApp$IongKey;

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
    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/MmsApp$IongKey;
    .locals 1
    .parameter "name"

    .prologue
    .line 276
    const-class v0, Lcom/android/mms/MmsApp$IongKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/MmsApp$IongKey;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/MmsApp$IongKey;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/android/mms/MmsApp$IongKey;->$VALUES:[Lcom/android/mms/MmsApp$IongKey;

    invoke-virtual {v0}, [Lcom/android/mms/MmsApp$IongKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/MmsApp$IongKey;

    return-object v0
.end method
