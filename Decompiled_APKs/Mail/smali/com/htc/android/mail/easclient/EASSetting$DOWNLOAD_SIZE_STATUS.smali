.class final enum Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
.super Ljava/lang/Enum;
.source "EASSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DOWNLOAD_SIZE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

.field public static final enum HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

.field public static final enum MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

.field public static final enum PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 123
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    const-string v1, "PLAIN_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 124
    new-instance v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    const-string v1, "MIME"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    sget-object v1, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->HTML:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->PLAIN_TEXT:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->MIME:Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->$VALUES:[Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->$VALUES:[Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    invoke-virtual {v0}, [Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/easclient/EASSetting$DOWNLOAD_SIZE_STATUS;

    return-object v0
.end method
