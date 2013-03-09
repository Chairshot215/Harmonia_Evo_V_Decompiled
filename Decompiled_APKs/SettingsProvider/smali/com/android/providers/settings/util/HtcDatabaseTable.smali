.class public final enum Lcom/android/providers/settings/util/HtcDatabaseTable;
.super Ljava/lang/Enum;
.source "HtcDatabaseTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/settings/util/HtcDatabaseTable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/settings/util/HtcDatabaseTable;

.field public static final enum HTC_SERVICES:Lcom/android/providers/settings/util/HtcDatabaseTable;

.field public static final enum SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

.field public static final enum SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/util/HtcDatabaseTable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    .line 11
    new-instance v0, Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "SECURE"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/util/HtcDatabaseTable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    .line 12
    new-instance v0, Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "HTC_SERVICES"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/settings/util/HtcDatabaseTable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->HTC_SERVICES:Lcom/android/providers/settings/util/HtcDatabaseTable;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->HTC_SERVICES:Lcom/android/providers/settings/util/HtcDatabaseTable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->$VALUES:[Lcom/android/providers/settings/util/HtcDatabaseTable;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/settings/util/HtcDatabaseTable;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/android/providers/settings/util/HtcDatabaseTable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/util/HtcDatabaseTable;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/settings/util/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->$VALUES:[Lcom/android/providers/settings/util/HtcDatabaseTable;

    invoke-virtual {v0}, [Lcom/android/providers/settings/util/HtcDatabaseTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/settings/util/HtcDatabaseTable;

    return-object v0
.end method
