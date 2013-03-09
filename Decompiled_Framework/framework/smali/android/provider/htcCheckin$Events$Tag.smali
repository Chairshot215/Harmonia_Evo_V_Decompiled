.class public final enum Landroid/provider/htcCheckin$Events$Tag;
.super Ljava/lang/Enum;
.source "htcCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/htcCheckin$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/htcCheckin$Events$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/htcCheckin$Events$Tag;

.field public static final enum FOTA_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

.field public static final enum HTCSERVICES_ERROR:Landroid/provider/htcCheckin$Events$Tag;

.field public static final enum HTCSERVICES_UPDATE:Landroid/provider/htcCheckin$Events$Tag;

.field public static final enum HTC_CHECKIN_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

.field public static final enum HTC_CHECKIN_SUCCESS:Landroid/provider/htcCheckin$Events$Tag;

.field public static final enum TEST:Landroid/provider/htcCheckin$Events$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/provider/htcCheckin$Events$Tag;

    const-string v1, "FOTA_FAILURE"

    invoke-direct {v0, v1, v3}, Landroid/provider/htcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->FOTA_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    new-instance v0, Landroid/provider/htcCheckin$Events$Tag;

    const-string v1, "HTCSERVICES_ERROR"

    invoke-direct {v0, v1, v4}, Landroid/provider/htcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTCSERVICES_ERROR:Landroid/provider/htcCheckin$Events$Tag;

    new-instance v0, Landroid/provider/htcCheckin$Events$Tag;

    const-string v1, "HTCSERVICES_UPDATE"

    invoke-direct {v0, v1, v5}, Landroid/provider/htcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTCSERVICES_UPDATE:Landroid/provider/htcCheckin$Events$Tag;

    new-instance v0, Landroid/provider/htcCheckin$Events$Tag;

    const-string v1, "HTC_CHECKIN_FAILURE"

    invoke-direct {v0, v1, v6}, Landroid/provider/htcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    new-instance v0, Landroid/provider/htcCheckin$Events$Tag;

    const-string v1, "HTC_CHECKIN_SUCCESS"

    invoke-direct {v0, v1, v7}, Landroid/provider/htcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Landroid/provider/htcCheckin$Events$Tag;

    new-instance v0, Landroid/provider/htcCheckin$Events$Tag;

    const-string v1, "TEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/provider/htcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->TEST:Landroid/provider/htcCheckin$Events$Tag;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/provider/htcCheckin$Events$Tag;

    sget-object v1, Landroid/provider/htcCheckin$Events$Tag;->FOTA_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/htcCheckin$Events$Tag;->HTCSERVICES_ERROR:Landroid/provider/htcCheckin$Events$Tag;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/htcCheckin$Events$Tag;->HTCSERVICES_UPDATE:Landroid/provider/htcCheckin$Events$Tag;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    aput-object v1, v0, v6

    sget-object v1, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Landroid/provider/htcCheckin$Events$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/provider/htcCheckin$Events$Tag;->TEST:Landroid/provider/htcCheckin$Events$Tag;

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/htcCheckin$Events$Tag;->$VALUES:[Landroid/provider/htcCheckin$Events$Tag;

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

.method public static valueOf(Ljava/lang/String;)Landroid/provider/htcCheckin$Events$Tag;
    .locals 1

    const-class v0, Landroid/provider/htcCheckin$Events$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/htcCheckin$Events$Tag;

    return-object v0
.end method

.method public static values()[Landroid/provider/htcCheckin$Events$Tag;
    .locals 1

    sget-object v0, Landroid/provider/htcCheckin$Events$Tag;->$VALUES:[Landroid/provider/htcCheckin$Events$Tag;

    invoke-virtual {v0}, [Landroid/provider/htcCheckin$Events$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/htcCheckin$Events$Tag;

    return-object v0
.end method
