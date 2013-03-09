.class public final enum Lcom/android/mms/model/MediaModel$MediaAction;
.super Ljava/lang/Enum;
.source "MediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/MediaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/model/MediaModel$MediaAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/model/MediaModel$MediaAction;

.field public static final enum NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

.field public static final enum PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

.field public static final enum SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

.field public static final enum START:Lcom/android/mms/model/MediaModel$MediaAction;

.field public static final enum STOP:Lcom/android/mms/model/MediaModel$MediaAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/mms/model/MediaModel$MediaAction;

    const-string v1, "NO_ACTIVE_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/MediaModel$MediaAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 84
    new-instance v0, Lcom/android/mms/model/MediaModel$MediaAction;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/model/MediaModel$MediaAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 85
    new-instance v0, Lcom/android/mms/model/MediaModel$MediaAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/model/MediaModel$MediaAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 86
    new-instance v0, Lcom/android/mms/model/MediaModel$MediaAction;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/model/MediaModel$MediaAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 87
    new-instance v0, Lcom/android/mms/model/MediaModel$MediaAction;

    const-string v1, "SEEK"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/model/MediaModel$MediaAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/model/MediaModel$MediaAction;

    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->$VALUES:[Lcom/android/mms/model/MediaModel$MediaAction;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    const-class v0, Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$MediaAction;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->$VALUES:[Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {v0}, [Lcom/android/mms/model/MediaModel$MediaAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/model/MediaModel$MediaAction;

    return-object v0
.end method
