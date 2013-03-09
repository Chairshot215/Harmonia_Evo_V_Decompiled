.class public final enum Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
.super Ljava/lang/Enum;
.source "ListEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/ListEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Grouping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

.field public static final enum NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

.field public static final enum START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

.field public static final enum WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 49
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    const-string v1, "START_OF_GROUP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 51
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    const-string v1, "WITHIN_GROUP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->$VALUES:[Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    return-object v0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->$VALUES:[Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    return-object v0
.end method
