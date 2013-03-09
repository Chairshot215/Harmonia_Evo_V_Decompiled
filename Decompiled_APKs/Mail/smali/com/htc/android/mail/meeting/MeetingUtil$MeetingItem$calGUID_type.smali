.class public final enum Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;
.super Ljava/lang/Enum;
.source "MeetingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "calGUID_type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

.field public static final enum base64:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

.field public static final enum uuid:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    const-string v1, "base64"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->base64:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    new-instance v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    const-string v1, "uuid"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->uuid:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    sget-object v1, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->base64:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->uuid:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->$VALUES:[Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->$VALUES:[Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    invoke-virtual {v0}, [Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

    return-object v0
.end method
