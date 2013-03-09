.class public final enum Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;
.super Ljava/lang/Enum;
.source "LegacyWidgetInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegacyDbColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum EXTRA_PROP:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum ICON_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum ITEM_CATEGORY:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum LAYOUT_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum PACKAGE_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum PARENT_ID:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum PLUGIN_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum SPAN_X:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum SPAN_Y:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum TEXTC_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

.field public static final enum WIDGET_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;


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

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "PACKAGE_NAME"

    const-string v2, "package_name"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PACKAGE_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "WIDGET_NAME"

    const-string v2, "widget_name"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->WIDGET_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "PLUGIN_NAME"

    const-string v2, "plugin_classname"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PLUGIN_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "ITEM_CATEGORY"

    const-string v2, "item_category"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->ITEM_CATEGORY:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "PARENT_ID"

    const-string v2, "parent_id"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PARENT_ID:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "TEXTC_RES"

    const/4 v2, 0x5

    const-string v3, "text_resource"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->TEXTC_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "ICON_RES"

    const/4 v2, 0x6

    const-string v3, "icon_resource"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->ICON_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "SPAN_X"

    const/4 v2, 0x7

    const-string v3, "span_x"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->SPAN_X:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "SPAN_Y"

    const/16 v2, 0x8

    const-string v3, "span_y"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->SPAN_Y:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "LAYOUT_RES"

    const/16 v2, 0x9

    const-string v3, "layout_resource"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->LAYOUT_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    new-instance v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const-string v1, "EXTRA_PROP"

    const/16 v2, 0xa

    const-string v3, "extra_properties"

    const-string v4, "BLOB"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->EXTRA_PROP:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    sget-object v1, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PACKAGE_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->WIDGET_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PLUGIN_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->ITEM_CATEGORY:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PARENT_ID:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->TEXTC_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->ICON_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->SPAN_X:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->SPAN_Y:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->LAYOUT_RES:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->EXTRA_PROP:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->$VALUES:[Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

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

    iput-object p3, p0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;
    .locals 1

    const-class v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;
    .locals 1

    sget-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->$VALUES:[Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    invoke-virtual {v0}, [Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    return-object v0
.end method
