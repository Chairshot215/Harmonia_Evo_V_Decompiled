.class final enum Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;
.super Ljava/lang/Enum;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "actionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

.field public static final enum add:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

.field public static final enum delete:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

.field public static final enum update:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    const-string v1, "add"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->add:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    new-instance v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    const-string v1, "update"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->update:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    new-instance v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    const-string v1, "delete"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->delete:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    sget-object v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->add:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->update:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->delete:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->$VALUES:[Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    const-class v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->$VALUES:[Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    invoke-virtual {v0}, [Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    return-object v0
.end method
