.class public final enum Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;
.super Ljava/lang/Enum;
.source "CSStatusBarNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/util/CSStatusBarNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingIntentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

.field public static final enum Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

.field public static final enum Service:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    const-string v1, "Service"

    invoke-direct {v0, v1, v2}, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Service:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    .line 68
    new-instance v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    const-string v1, "Activity"

    invoke-direct {v0, v1, v3}, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    sget-object v1, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Service:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->$VALUES:[Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->$VALUES:[Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    invoke-virtual {v0}, [Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    return-object v0
.end method
