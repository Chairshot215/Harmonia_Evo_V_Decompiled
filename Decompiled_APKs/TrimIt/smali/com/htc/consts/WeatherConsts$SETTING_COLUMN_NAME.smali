.class public final enum Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
.super Ljava/lang/Enum;
.source "WeatherConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/consts/WeatherConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SETTING_COLUMN_NAME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

.field public static final enum _id:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

.field public static final enum app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

.field public static final enum key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

.field public static final enum value:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    const-string v1, "_id"

    invoke-direct {v0, v1, v2}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    const-string v1, "app"

    invoke-direct {v0, v1, v3}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    const-string v1, "key"

    invoke-direct {v0, v1, v4}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    const-string v1, "value"

    invoke-direct {v0, v1, v5}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->value:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->value:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->$VALUES:[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    return-object v0
.end method

.method public static values()[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->$VALUES:[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v0}, [Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    return-object v0
.end method
