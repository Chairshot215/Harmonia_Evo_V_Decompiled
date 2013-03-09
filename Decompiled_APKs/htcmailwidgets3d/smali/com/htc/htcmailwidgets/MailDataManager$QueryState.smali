.class public final enum Lcom/htc/htcmailwidgets/MailDataManager$QueryState;
.super Ljava/lang/Enum;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/htcmailwidgets/MailDataManager$QueryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

.field public static final enum EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

.field public static final enum EN_FIRST_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

.field public static final enum EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

.field public static final enum EN_SECOND_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    const-string v1, "EN_FIRST_RUN"

    invoke-direct {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_FIRST_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 128
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    const-string v1, "EN_SECOND_RUN"

    invoke-direct {v0, v1, v3}, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_SECOND_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 129
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    const-string v1, "EN_REQUERY_RUN"

    invoke-direct {v0, v1, v4}, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 130
    new-instance v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    const-string v1, "EN_DONOTHING"

    invoke-direct {v0, v1, v5}, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_FIRST_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_SECOND_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->$VALUES:[Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/htcmailwidgets/MailDataManager$QueryState;
    .locals 1
    .parameter "name"

    .prologue
    .line 126
    const-class v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    return-object v0
.end method

.method public static values()[Lcom/htc/htcmailwidgets/MailDataManager$QueryState;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->$VALUES:[Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    invoke-virtual {v0}, [Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    return-object v0
.end method
