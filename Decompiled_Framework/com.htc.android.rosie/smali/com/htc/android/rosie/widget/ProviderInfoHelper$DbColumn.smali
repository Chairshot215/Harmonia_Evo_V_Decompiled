.class public final enum Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;
.super Ljava/lang/Enum;
.source "ProviderInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/ProviderInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DbColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

.field public static final enum STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "PROVIDER"

    const-string v2, "provider"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "CATEGORY"

    const-string v2, "category"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "PKG_VERSION"

    const-string v2, "package_version"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_TYPE_ID"

    const-string v2, "style_type_id"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_NAME_RES"

    const-string v2, "style_name_res"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_DESC_RES"

    const/4 v2, 0x5

    const-string v3, "style_desc_res"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_PREVIEW_RES"

    const/4 v2, 0x6

    const-string v3, "style_preview_res"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_REL_DATE"

    const/4 v2, 0x7

    const-string v3, "style_release_date"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_COMP_NAME"

    const/16 v2, 0x8

    const-string v3, "style_component_name"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_SETTINGS_ACTIVITY"

    const/16 v2, 0x9

    const-string v3, "style_settings_activity"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_SPAN_X"

    const/16 v2, 0xa

    const-string v3, "style_span_x"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_SPAN_Y"

    const/16 v2, 0xb

    const-string v3, "style_span_y"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const-string v1, "STYLE_SCENE"

    const/16 v2, 0xc

    const-string v3, "style_scene"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->CATEGORY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PKG_VERSION:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_NAME_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_DESC_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_PREVIEW_RES:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_REL_DATE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SETTINGS_ACTIVITY:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_X:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SPAN_Y:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_SCENE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->$VALUES:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;
    .locals 1

    const-class v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;
    .locals 1

    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->$VALUES:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    invoke-virtual {v0}, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    return-object v0
.end method
