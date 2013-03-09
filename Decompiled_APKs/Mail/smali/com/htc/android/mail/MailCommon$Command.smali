.class public final enum Lcom/htc/android/mail/MailCommon$Command;
.super Ljava/lang/Enum;
.source "MailCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/MailCommon$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_DRM_DCF_OPEN:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_DRM_FL_OPEN:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_IMPORT_VCAL:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_IMPORT_VCARD:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_OPEN:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_SAVE_TO_EXTERNAL_STORAGE:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum ATTACH_SAVE_TO_PHONE_STORAGE:Lcom/htc/android/mail/MailCommon$Command;

.field public static final enum UNDEFINED:Lcom/htc/android/mail/MailCommon$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->UNDEFINED:Lcom/htc/android/mail/MailCommon$Command;

    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_SAVE_TO_PHONE_STORAGE"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_SAVE_TO_PHONE_STORAGE:Lcom/htc/android/mail/MailCommon$Command;

    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_SAVE_TO_EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_SAVE_TO_EXTERNAL_STORAGE:Lcom/htc/android/mail/MailCommon$Command;

    .line 222
    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_OPEN"

    invoke-direct {v0, v1, v6}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_OPEN:Lcom/htc/android/mail/MailCommon$Command;

    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_IMPORT_VCARD"

    invoke-direct {v0, v1, v7}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_IMPORT_VCARD:Lcom/htc/android/mail/MailCommon$Command;

    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_IMPORT_VCAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_IMPORT_VCAL:Lcom/htc/android/mail/MailCommon$Command;

    .line 223
    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_DRM_FL_OPEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_DRM_FL_OPEN:Lcom/htc/android/mail/MailCommon$Command;

    new-instance v0, Lcom/htc/android/mail/MailCommon$Command;

    const-string v1, "ATTACH_DRM_DCF_OPEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailCommon$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_DRM_DCF_OPEN:Lcom/htc/android/mail/MailCommon$Command;

    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/android/mail/MailCommon$Command;

    sget-object v1, Lcom/htc/android/mail/MailCommon$Command;->UNDEFINED:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_SAVE_TO_PHONE_STORAGE:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_SAVE_TO_EXTERNAL_STORAGE:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_OPEN:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_IMPORT_VCARD:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_IMPORT_VCAL:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_DRM_FL_OPEN:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/mail/MailCommon$Command;->ATTACH_DRM_DCF_OPEN:Lcom/htc/android/mail/MailCommon$Command;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/MailCommon$Command;->$VALUES:[Lcom/htc/android/mail/MailCommon$Command;

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
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/MailCommon$Command;
    .locals 1
    .parameter "name"

    .prologue
    .line 221
    const-class v0, Lcom/htc/android/mail/MailCommon$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailCommon$Command;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/MailCommon$Command;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/htc/android/mail/MailCommon$Command;->$VALUES:[Lcom/htc/android/mail/MailCommon$Command;

    invoke-virtual {v0}, [Lcom/htc/android/mail/MailCommon$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/MailCommon$Command;

    return-object v0
.end method
