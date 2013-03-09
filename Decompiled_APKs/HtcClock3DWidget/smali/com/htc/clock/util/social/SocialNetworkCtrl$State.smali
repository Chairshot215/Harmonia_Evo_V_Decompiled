.class public final enum Lcom/htc/clock/util/social/SocialNetworkCtrl$State;
.super Ljava/lang/Enum;
.source "SocialNetworkCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/social/SocialNetworkCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/clock/util/social/SocialNetworkCtrl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

.field public static final enum START:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

.field public static final enum STOP:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->STOP:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    new-instance v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->START:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    sget-object v1, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->STOP:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->START:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->$VALUES:[Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/clock/util/social/SocialNetworkCtrl$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/clock/util/social/SocialNetworkCtrl$State;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->$VALUES:[Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    invoke-virtual {v0}, [Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    return-object v0
.end method
