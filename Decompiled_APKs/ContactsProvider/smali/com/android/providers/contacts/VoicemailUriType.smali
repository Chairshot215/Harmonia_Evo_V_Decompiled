.class final enum Lcom/android/providers/contacts/VoicemailUriType;
.super Ljava/lang/Enum;
.source "VoicemailUriType.java"

# interfaces
.implements Lcom/android/providers/contacts/util/UriType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/contacts/VoicemailUriType;",
        ">;",
        "Lcom/android/providers/contacts/util/UriType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/contacts/VoicemailUriType;

.field public static final enum NO_MATCH:Lcom/android/providers/contacts/VoicemailUriType;

.field public static final enum STATUS:Lcom/android/providers/contacts/VoicemailUriType;

.field public static final enum STATUS_ID:Lcom/android/providers/contacts/VoicemailUriType;

.field public static final enum VOICEMAILS:Lcom/android/providers/contacts/VoicemailUriType;

.field public static final enum VOICEMAILS_ID:Lcom/android/providers/contacts/VoicemailUriType;


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/android/providers/contacts/VoicemailUriType;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/contacts/VoicemailUriType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/VoicemailUriType;->NO_MATCH:Lcom/android/providers/contacts/VoicemailUriType;

    .line 25
    new-instance v0, Lcom/android/providers/contacts/VoicemailUriType;

    const-string v1, "VOICEMAILS"

    const-string v2, "voicemail"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/contacts/VoicemailUriType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS:Lcom/android/providers/contacts/VoicemailUriType;

    .line 26
    new-instance v0, Lcom/android/providers/contacts/VoicemailUriType;

    const-string v1, "VOICEMAILS_ID"

    const-string v2, "voicemail/#"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/providers/contacts/VoicemailUriType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    .line 27
    new-instance v0, Lcom/android/providers/contacts/VoicemailUriType;

    const-string v1, "STATUS"

    const-string v2, "status"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/providers/contacts/VoicemailUriType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/VoicemailUriType;->STATUS:Lcom/android/providers/contacts/VoicemailUriType;

    .line 28
    new-instance v0, Lcom/android/providers/contacts/VoicemailUriType;

    const-string v1, "STATUS_ID"

    const-string v2, "status/#"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/providers/contacts/VoicemailUriType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/VoicemailUriType;->STATUS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/providers/contacts/VoicemailUriType;

    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->NO_MATCH:Lcom/android/providers/contacts/VoicemailUriType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS:Lcom/android/providers/contacts/VoicemailUriType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->STATUS:Lcom/android/providers/contacts/VoicemailUriType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->STATUS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/contacts/VoicemailUriType;->$VALUES:[Lcom/android/providers/contacts/VoicemailUriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailUriType;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/contacts/VoicemailUriType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/android/providers/contacts/VoicemailUriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/VoicemailUriType;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/contacts/VoicemailUriType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/providers/contacts/VoicemailUriType;->$VALUES:[Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v0}, [Lcom/android/providers/contacts/VoicemailUriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/contacts/VoicemailUriType;

    return-object v0
.end method


# virtual methods
.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailUriType;->path:Ljava/lang/String;

    return-object v0
.end method
