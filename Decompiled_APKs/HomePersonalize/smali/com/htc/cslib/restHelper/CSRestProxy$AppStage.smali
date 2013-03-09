.class final enum Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
.super Ljava/lang/Enum;
.source "CSRestProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/restHelper/CSRestProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

.field public static final enum call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

.field public static final enum no_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

.field public static final enum recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    const-string v1, "call_provisioning"

    invoke-direct {v0, v1, v2}, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    new-instance v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    const-string v1, "recall_provising"

    invoke-direct {v0, v1, v3}, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    new-instance v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    const-string v1, "no_provisioning"

    invoke-direct {v0, v1, v4}, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->no_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    sget-object v1, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->no_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->$VALUES:[Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    return-object v0
.end method

.method public static values()[Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->$VALUES:[Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    invoke-virtual {v0}, [Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    return-object v0
.end method
