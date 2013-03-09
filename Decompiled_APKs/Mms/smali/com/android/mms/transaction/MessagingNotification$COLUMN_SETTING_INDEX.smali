.class public final enum Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;
.super Ljava/lang/Enum;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLUMN_SETTING_INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

.field public static final enum GUID:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

.field public static final enum _id:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

.field public static final enum refType:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

.field public static final enum soundUri:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    const-string v1, "_id"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->_id:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    .line 297
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    const-string v1, "GUID"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->GUID:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    .line 298
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    const-string v1, "refType"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->refType:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    .line 299
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    const-string v1, "soundUri"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->soundUri:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    .line 294
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->_id:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->GUID:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->refType:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->soundUri:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->$VALUES:[Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

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
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;
    .locals 1
    .parameter "name"

    .prologue
    .line 294
    const-class v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->$VALUES:[Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    return-object v0
.end method
