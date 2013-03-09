.class public Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper;
.super Ljava/lang/Object;
.source "LegacyWidgetInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;
    }
.end annotation


# static fields
.field public static final LEGACY_DB_COLUMNS:[Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PACKAGE_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->WIDGET_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PLUGIN_NAME:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->ITEM_CATEGORY:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;->PARENT_ID:Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper;->LEGACY_DB_COLUMNS:[Lcom/htc/android/rosie/widget/LegacyWidgetInfoHelper$LegacyDbColumn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
