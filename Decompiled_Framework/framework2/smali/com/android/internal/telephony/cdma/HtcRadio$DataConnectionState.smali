.class public final enum Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
.super Ljava/lang/Enum;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum Disconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field public static final enum Unknown:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "PendingDisconnecting"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "Disconnecting"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "Disconnected"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "ResourceReleaseWaiting"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const-string v1, "Unknown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Unknown:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Unknown:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->$VALUES:[Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->$VALUES:[Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    return-object v0
.end method
