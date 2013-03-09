.class public final enum Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;
.super Ljava/lang/Enum;
.source "HtcWraphtcCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

.field public static final enum FOTA_FAILURE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

.field public static final enum HTCSERVICES_ERROR:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

.field public static final enum HTCSERVICES_UPDATE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

.field public static final enum HTC_CHECKIN_FAILURE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

.field public static final enum HTC_CHECKIN_SUCCESS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

.field public static final enum TEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    const-string v1, "FOTA_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->FOTA_FAILURE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    .line 103
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    const-string v1, "HTCSERVICES_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTCSERVICES_ERROR:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    .line 104
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    const-string v1, "HTCSERVICES_UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTCSERVICES_UPDATE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    .line 105
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    const-string v1, "HTC_CHECKIN_FAILURE"

    invoke-direct {v0, v1, v6}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTC_CHECKIN_FAILURE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    .line 106
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    const-string v1, "HTC_CHECKIN_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    .line 107
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    const-string v1, "TEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->TEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->FOTA_FAILURE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTCSERVICES_ERROR:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTCSERVICES_UPDATE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTC_CHECKIN_FAILURE:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->TEST:Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->$VALUES:[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    const-class v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    return-object v0
.end method

.method public static values()[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->$VALUES:[Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    invoke-virtual {v0}, [Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;

    return-object v0
.end method
