.class final enum Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;
.super Ljava/lang/Enum;
.source "EASClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SYNC_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

.field public static final enum END:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

.field public static final enum START:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1010
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->START:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    const-string v1, "END"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->END:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    .line 1009
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    sget-object v1, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->START:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->END:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->$VALUES:[Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

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
    .line 1009
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 1009
    const-class v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;
    .locals 1

    .prologue
    .line 1009
    sget-object v0, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->$VALUES:[Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    invoke-virtual {v0}, [Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    return-object v0
.end method
