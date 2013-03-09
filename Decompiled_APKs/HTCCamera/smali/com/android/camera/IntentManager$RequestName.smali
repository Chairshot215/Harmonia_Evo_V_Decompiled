.class public final enum Lcom/android/camera/IntentManager$RequestName;
.super Ljava/lang/Enum;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/IntentManager$RequestName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Album:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum CU:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Contacts:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Mail:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Mms:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Notes:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Square:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Unknown_General:Lcom/android/camera/IntentManager$RequestName;

.field public static final enum Unknown_Service:Lcom/android/camera/IntentManager$RequestName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Unknown_General"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Unknown_Service"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Mms"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Album"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Contacts"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Mail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Notes"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "Square"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    new-instance v0, Lcom/android/camera/IntentManager$RequestName;

    const-string v1, "CU"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/camera/IntentManager$RequestName;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/IntentManager$RequestName;->$VALUES:[Lcom/android/camera/IntentManager$RequestName;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/IntentManager$RequestName;
    .locals 1

    const-class v0, Lcom/android/camera/IntentManager$RequestName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentManager$RequestName;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/IntentManager$RequestName;
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->$VALUES:[Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0}, [Lcom/android/camera/IntentManager$RequestName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/IntentManager$RequestName;

    return-object v0
.end method
