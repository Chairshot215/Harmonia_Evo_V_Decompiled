.class public final enum Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
.super Ljava/lang/Enum;
.source "HtcCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/HtcCalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

.field public static final enum EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

.field public static final enum EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

.field public static final enum EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    const-string v1, "EN_TODAY"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    new-instance v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    const-string v1, "EN_TOMORROW"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    new-instance v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    const-string v1, "EN_OTHER"

    invoke-direct {v0, v1, v4}, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    sget-object v1, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->$VALUES:[Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .locals 1

    const-class v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .locals 1

    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->$VALUES:[Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    invoke-virtual {v0}, [Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    return-object v0
.end method
