.class final enum Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;
.super Ljava/lang/Enum;
.source "HtcDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/helper/HtcDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

.field public static final enum PROFILE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

.field public static final enum SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

.field public static final enum SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    .line 42
    new-instance v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "SECURE"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    .line 43
    new-instance v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->PROFILE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->PROFILE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->$VALUES:[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->$VALUES:[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-virtual {v0}, [Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    return-object v0
.end method
