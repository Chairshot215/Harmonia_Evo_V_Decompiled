.class public final enum Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
.super Ljava/lang/Enum;
.source "SuggestionsControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

.field public static final enum SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

.field public static final enum SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    const-string v1, "SUGGESTIONS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    .line 54
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    const-string v1, "SUMMONS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->$VALUES:[Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->$VALUES:[Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    return-object v0
.end method
