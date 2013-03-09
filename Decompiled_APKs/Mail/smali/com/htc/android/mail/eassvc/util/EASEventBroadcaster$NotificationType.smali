.class public final enum Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;
.super Ljava/lang/Enum;
.source "EASEventBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

.field public static final enum ALL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

.field public static final enum SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->ALL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    .line 45
    new-instance v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const-string v1, "SEND_MAIL"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->ALL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->$VALUES:[Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->$VALUES:[Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    invoke-virtual {v0}, [Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    return-object v0
.end method
