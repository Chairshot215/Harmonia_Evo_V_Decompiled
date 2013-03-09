.class public final enum Lcom/htc/android/mail/Attachment$States;
.super Ljava/lang/Enum;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/Attachment$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/Attachment$States;

.field public static final enum available:Lcom/htc/android/mail/Attachment$States;

.field public static final enum downloaded:Lcom/htc/android/mail/Attachment$States;

.field public static final enum downloading:Lcom/htc/android/mail/Attachment$States;

.field public static final enum missing:Lcom/htc/android/mail/Attachment$States;

.field public static final enum unDownloaded:Lcom/htc/android/mail/Attachment$States;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/htc/android/mail/Attachment$States;

    const-string v1, "unDownloaded"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/Attachment$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    new-instance v0, Lcom/htc/android/mail/Attachment$States;

    const-string v1, "downloading"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/Attachment$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    new-instance v0, Lcom/htc/android/mail/Attachment$States;

    const-string v1, "downloaded"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/Attachment$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/Attachment$States;->downloaded:Lcom/htc/android/mail/Attachment$States;

    new-instance v0, Lcom/htc/android/mail/Attachment$States;

    const-string v1, "missing"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/mail/Attachment$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    new-instance v0, Lcom/htc/android/mail/Attachment$States;

    const-string v1, "available"

    invoke-direct {v0, v1, v6}, Lcom/htc/android/mail/Attachment$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/Attachment$States;->available:Lcom/htc/android/mail/Attachment$States;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/android/mail/Attachment$States;

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->downloading:Lcom/htc/android/mail/Attachment$States;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->downloaded:Lcom/htc/android/mail/Attachment$States;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->available:Lcom/htc/android/mail/Attachment$States;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/mail/Attachment$States;->$VALUES:[Lcom/htc/android/mail/Attachment$States;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/Attachment$States;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/htc/android/mail/Attachment$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Attachment$States;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/Attachment$States;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/mail/Attachment$States;->$VALUES:[Lcom/htc/android/mail/Attachment$States;

    invoke-virtual {v0}, [Lcom/htc/android/mail/Attachment$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/Attachment$States;

    return-object v0
.end method
