.class public final enum Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;
.super Ljava/lang/Enum;
.source "HtcInstalledApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/HtcInstalledApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

.field public static final enum ALL:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

.field public static final enum RUNNING:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

.field public static final enum THIRD_PARTY:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->ALL:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    .line 31
    new-instance v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->RUNNING:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    .line 32
    new-instance v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    const-string v1, "THIRD_PARTY"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->THIRD_PARTY:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    sget-object v1, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->ALL:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->RUNNING:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->THIRD_PARTY:Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->$VALUES:[Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->$VALUES:[Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    invoke-virtual {v0}, [Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/content/HtcInstalledApplicationManager$Filter;

    return-object v0
.end method
