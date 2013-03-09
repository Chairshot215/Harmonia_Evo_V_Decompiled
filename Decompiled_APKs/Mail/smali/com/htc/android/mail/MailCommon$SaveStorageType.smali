.class public final enum Lcom/htc/android/mail/MailCommon$SaveStorageType;
.super Ljava/lang/Enum;
.source "MailCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveStorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/MailCommon$SaveStorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/MailCommon$SaveStorageType;

.field public static final enum EXTERNAL_STORAGE:Lcom/htc/android/mail/MailCommon$SaveStorageType;

.field public static final enum PHONE_STORAGE:Lcom/htc/android/mail/MailCommon$SaveStorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    new-instance v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;

    const-string v1, "PHONE_STORAGE"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailCommon$SaveStorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;->PHONE_STORAGE:Lcom/htc/android/mail/MailCommon$SaveStorageType;

    new-instance v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/MailCommon$SaveStorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;->EXTERNAL_STORAGE:Lcom/htc/android/mail/MailCommon$SaveStorageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/android/mail/MailCommon$SaveStorageType;

    sget-object v1, Lcom/htc/android/mail/MailCommon$SaveStorageType;->PHONE_STORAGE:Lcom/htc/android/mail/MailCommon$SaveStorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/MailCommon$SaveStorageType;->EXTERNAL_STORAGE:Lcom/htc/android/mail/MailCommon$SaveStorageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;->$VALUES:[Lcom/htc/android/mail/MailCommon$SaveStorageType;

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
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/MailCommon$SaveStorageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 220
    const-class v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/MailCommon$SaveStorageType;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/htc/android/mail/MailCommon$SaveStorageType;->$VALUES:[Lcom/htc/android/mail/MailCommon$SaveStorageType;

    invoke-virtual {v0}, [Lcom/htc/android/mail/MailCommon$SaveStorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/MailCommon$SaveStorageType;

    return-object v0
.end method
