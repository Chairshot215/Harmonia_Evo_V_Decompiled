.class public final enum Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;
.super Ljava/lang/Enum;
.source "CSProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

.field public static final enum AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

.field public static final enum CREATE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

.field public static final enum DELETE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

.field public static final enum NONE:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

.field public static final enum TEST_SERVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->NONE:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 23
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    const-string v1, "CREATE_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->CREATE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 24
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    const-string v1, "DELETE_ACCOUNT"

    invoke-direct {v0, v1, v4}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 25
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    const-string v1, "AUTO_DISCOVER"

    invoke-direct {v0, v1, v5}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 26
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    const-string v1, "TEST_SERVER"

    invoke-direct {v0, v1, v6}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->TEST_SERVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->NONE:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->CREATE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->TEST_SERVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->$VALUES:[Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    return-object v0
.end method

.method public static values()[Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->$VALUES:[Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-virtual {v0}, [Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    return-object v0
.end method
