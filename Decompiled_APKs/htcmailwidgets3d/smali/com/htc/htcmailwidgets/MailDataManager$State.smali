.class final enum Lcom/htc/htcmailwidgets/MailDataManager$State;
.super Ljava/lang/Enum;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/htcmailwidgets/MailDataManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/htcmailwidgets/MailDataManager$State;

.field public static final enum EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field public static final enum EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

.field public static final enum EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$State;

    const-string v1, "EN_NOCHANGE"

    invoke-direct {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 188
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$State;

    const-string v1, "EN_TRUE"

    invoke-direct {v0, v1, v3}, Lcom/htc/htcmailwidgets/MailDataManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 189
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$State;

    const-string v1, "EN_FALSE"

    invoke-direct {v0, v1, v4}, Lcom/htc/htcmailwidgets/MailDataManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    .line 186
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/htcmailwidgets/MailDataManager$State;

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_NOCHANGE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_TRUE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$State;->EN_FALSE:Lcom/htc/htcmailwidgets/MailDataManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->$VALUES:[Lcom/htc/htcmailwidgets/MailDataManager$State;

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
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/htcmailwidgets/MailDataManager$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 186
    const-class v0, Lcom/htc/htcmailwidgets/MailDataManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/htcmailwidgets/MailDataManager$State;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$State;->$VALUES:[Lcom/htc/htcmailwidgets/MailDataManager$State;

    invoke-virtual {v0}, [Lcom/htc/htcmailwidgets/MailDataManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcmailwidgets/MailDataManager$State;

    return-object v0
.end method
