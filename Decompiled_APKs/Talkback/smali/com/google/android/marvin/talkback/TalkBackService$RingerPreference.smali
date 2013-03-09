.class final enum Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;
.super Ljava/lang/Enum;
.source "TalkBackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TalkBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RingerPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS_SPEAK:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

.field public static final enum NOT_SILENT:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

.field public static final enum NOT_SILENT_OR_VIBRATE:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    const-string v1, "ALWAYS_SPEAK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->ALWAYS_SPEAK:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    .line 97
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    const-string v1, "NOT_SILENT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;-><init>(Ljava/lang/String;I)V

    .line 98
    sput-object v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->NOT_SILENT:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    .line 99
    new-instance v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    const-string v1, "NOT_SILENT_OR_VIBRATE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;-><init>(Ljava/lang/String;I)V

    .line 100
    sput-object v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->NOT_SILENT_OR_VIBRATE:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    sget-object v1, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->ALWAYS_SPEAK:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->NOT_SILENT:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->NOT_SILENT_OR_VIBRATE:Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;
    .locals 1
    .parameter "ordinal"

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->values()[Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/TalkBackService$RingerPreference;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
