.class public final enum Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;
.super Ljava/lang/Enum;
.source "OtrQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

.field public static final enum DISABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

.field public static final enum ENABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

.field public static final enum NONE:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->NONE:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->ENABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->DISABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->NONE:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->ENABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->DISABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->$VALUES:[Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;
    .locals 1
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->$VALUES:[Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    invoke-virtual {v0}, [Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    return-object v0
.end method
