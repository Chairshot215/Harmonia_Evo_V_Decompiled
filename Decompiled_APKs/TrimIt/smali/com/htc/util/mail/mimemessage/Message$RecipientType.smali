.class public final enum Lcom/htc/util/mail/mimemessage/Message$RecipientType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/mimemessage/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecipientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/mail/mimemessage/Message$RecipientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/mail/mimemessage/Message$RecipientType;

.field public static final enum BCC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

.field public static final enum CC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

.field public static final enum TO:Lcom/htc/util/mail/mimemessage/Message$RecipientType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    const-string v1, "TO"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/mimemessage/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    new-instance v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    const-string v1, "CC"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/mimemessage/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    new-instance v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    const-string v1, "BCC"

    invoke-direct {v0, v1, v4}, Lcom/htc/util/mail/mimemessage/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    sget-object v1, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->TO:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->CC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->BCC:Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->$VALUES:[Lcom/htc/util/mail/mimemessage/Message$RecipientType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Message$RecipientType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/mail/mimemessage/Message$RecipientType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/util/mail/mimemessage/Message$RecipientType;->$VALUES:[Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    invoke-virtual {v0}, [Lcom/htc/util/mail/mimemessage/Message$RecipientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/mail/mimemessage/Message$RecipientType;

    return-object v0
.end method
