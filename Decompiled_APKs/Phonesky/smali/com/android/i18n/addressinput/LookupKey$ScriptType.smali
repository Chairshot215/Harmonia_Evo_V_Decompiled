.class final enum Lcom/android/i18n/addressinput/LookupKey$ScriptType;
.super Ljava/lang/Enum;
.source "LookupKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/LookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScriptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/LookupKey$ScriptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/LookupKey$ScriptType;

.field public static final enum LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

.field public static final enum LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    const-string v1, "LATIN"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/LookupKey$ScriptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 78
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/addressinput/LookupKey$ScriptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->$VALUES:[Lcom/android/i18n/addressinput/LookupKey$ScriptType;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1
    .parameter

    .prologue
    .line 63
    const-class v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->$VALUES:[Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/LookupKey$ScriptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object v0
.end method
