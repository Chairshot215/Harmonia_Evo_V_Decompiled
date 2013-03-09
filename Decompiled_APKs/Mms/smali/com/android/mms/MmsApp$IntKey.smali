.class final enum Lcom/android/mms/MmsApp$IntKey;
.super Ljava/lang/Enum;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IntKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/MmsApp$IntKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/MmsApp$IntKey;

.field public static final enum Version:Lcom/android/mms/MmsApp$IntKey;

.field public static final enum pref_key_text_size:Lcom/android/mms/MmsApp$IntKey;

.field public static final enum pref_key_text_size_conversation:Lcom/android/mms/MmsApp$IntKey;

.field public static final enum pref_key_text_size_pinch:Lcom/android/mms/MmsApp$IntKey;

.field public static final enum pref_key_text_size_system:Lcom/android/mms/MmsApp$IntKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    new-instance v0, Lcom/android/mms/MmsApp$IntKey;

    const-string v1, "pref_key_text_size"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/MmsApp$IntKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size:Lcom/android/mms/MmsApp$IntKey;

    .line 270
    new-instance v0, Lcom/android/mms/MmsApp$IntKey;

    const-string v1, "pref_key_text_size_conversation"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/MmsApp$IntKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size_conversation:Lcom/android/mms/MmsApp$IntKey;

    .line 271
    new-instance v0, Lcom/android/mms/MmsApp$IntKey;

    const-string v1, "pref_key_text_size_pinch"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/MmsApp$IntKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size_pinch:Lcom/android/mms/MmsApp$IntKey;

    .line 272
    new-instance v0, Lcom/android/mms/MmsApp$IntKey;

    const-string v1, "pref_key_text_size_system"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/MmsApp$IntKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size_system:Lcom/android/mms/MmsApp$IntKey;

    .line 273
    new-instance v0, Lcom/android/mms/MmsApp$IntKey;

    const-string v1, "Version"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/MmsApp$IntKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$IntKey;->Version:Lcom/android/mms/MmsApp$IntKey;

    .line 267
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/MmsApp$IntKey;

    sget-object v1, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size:Lcom/android/mms/MmsApp$IntKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size_conversation:Lcom/android/mms/MmsApp$IntKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size_pinch:Lcom/android/mms/MmsApp$IntKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/MmsApp$IntKey;->pref_key_text_size_system:Lcom/android/mms/MmsApp$IntKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/MmsApp$IntKey;->Version:Lcom/android/mms/MmsApp$IntKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/MmsApp$IntKey;->$VALUES:[Lcom/android/mms/MmsApp$IntKey;

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
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/MmsApp$IntKey;
    .locals 1
    .parameter "name"

    .prologue
    .line 267
    const-class v0, Lcom/android/mms/MmsApp$IntKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/MmsApp$IntKey;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/MmsApp$IntKey;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/android/mms/MmsApp$IntKey;->$VALUES:[Lcom/android/mms/MmsApp$IntKey;

    invoke-virtual {v0}, [Lcom/android/mms/MmsApp$IntKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/MmsApp$IntKey;

    return-object v0
.end method
