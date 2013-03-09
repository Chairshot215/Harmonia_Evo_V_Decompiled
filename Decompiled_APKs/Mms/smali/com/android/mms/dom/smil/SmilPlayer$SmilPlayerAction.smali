.class final enum Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
.super Ljava/lang/Enum;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmilPlayerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum SEEK_TO:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "NO_ACTIVE_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 63
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "RELOAD"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 64
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 65
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 66
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 67
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "SEEK_TO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->SEEK_TO:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->SEEK_TO:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    invoke-virtual {v0}, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-object v0
.end method
