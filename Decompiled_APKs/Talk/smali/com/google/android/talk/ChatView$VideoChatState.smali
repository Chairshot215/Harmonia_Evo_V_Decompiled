.class public final enum Lcom/google/android/talk/ChatView$VideoChatState;
.super Ljava/lang/Enum;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoChatState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/ChatView$VideoChatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VIDEO_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VOICE_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

.field public static final enum VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 135
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VOICE_ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 136
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VOICE_MUTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 137
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VOICE_WAITING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 138
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VIDEO_ACTIVE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 139
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VIDEO_MUTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 140
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VIDEO_WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 141
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VIDEO_INCOMING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 142
    new-instance v0, Lcom/google/android/talk/ChatView$VideoChatState;

    const-string v1, "VOICE_INCOMING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/ChatView$VideoChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 133
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/talk/ChatView$VideoChatState;

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_INCOMING:Lcom/google/android/talk/ChatView$VideoChatState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->$VALUES:[Lcom/google/android/talk/ChatView$VideoChatState;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 1
    .parameter

    .prologue
    .line 133
    const-class v0, Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView$VideoChatState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->$VALUES:[Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0}, [Lcom/google/android/talk/ChatView$VideoChatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/ChatView$VideoChatState;

    return-object v0
.end method
