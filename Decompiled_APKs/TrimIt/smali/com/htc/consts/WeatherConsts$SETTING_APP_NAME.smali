.class public final enum Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;
.super Ljava/lang/Enum;
.source "WeatherConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/consts/WeatherConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SETTING_APP_NAME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

.field public static final enum system:Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    const-string v1, "system"

    invoke-direct {v0, v1, v2}, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;->system:Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;->system:Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;->$VALUES:[Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    return-object v0
.end method

.method public static values()[Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;->$VALUES:[Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    invoke-virtual {v0}, [Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;

    return-object v0
.end method
